#!/usr/bin/python
# Author: Davide Lanti
# Usage: ./cost-estimator-krishnamurty.py 20 15 3 1   ## selectivity offset nmappings redundant
# where
# - selectivity: {20} (20 percent)
# - offset: a value in {0,5,10,15,20}
# - nmappings: number of mappings per-predicate {1,2,3,4,5,6}
# - redundant: number of redundant mappings per-predicate {0,1,2,3,4,5}
# Check the paper for an explanation of the above parameters

import sys
import pdb
import math


# Calibration constants (found through calibration) 
cdb = 957 # Cost of accessing the db
ct = 0.021  # Cost of retrieving one tuple from db
cj = 0.0084  # Cost of joining two tuples
cu = 0.02  # Cost for the hash in the unique
cm = 0.07  # Cost of materializing one tuple
csorttwotuples = 0.002 # Cost of accessing a tuple and sort it
c_opt = 0.05 # Constant to understand how well the RDBMS handles the union w.r.t. duplicate results

## Table info
size_table = 1000000
one_percent = size_table / 100

## Query info
n_atoms_query = 3 # Number of atoms in the query

## For jucq
n_atoms_frag_1=2
n_atoms_frag_2=2

n_frags = 2

## Some default values for the parameters
selectivity = 20
offset = 15
mappings = 3
redundant = 2

log_base=10

if ( len(sys.argv) != 5 ):
    print "Usage: script-name selectivity offset mappings redundant"
    sys.exit()

selectivity = int(sys.argv[1])
offset = int(sys.argv[2])
mappings = int(sys.argv[3])
redundant = int(sys.argv[4])

## Parameters: selectivity, offset, mappings, redundant
# ontop = cdb + c_ucq (cost of accessing the db + cost of evaluating the ucq unfolding)
def ontop (s,o,m,r):
    n_unf = m**n_atoms_query                 # number of CQs in the unfolding
    non_redundant_unf = (m-r)**n_atoms_query # number of non-redundant CQs in the unfolding
    c_ucq = ucq(s,o,m,r,n_atoms_query,n_unf,non_redundant_unf)
    cost = cdb + c_ucq
    return cost

# Parameters: selectivity, offset, mappings, redundant, number of atoms in the query, number of CQs in the unfolding, number of non-redundant CQs in the unfolding
# Returns: the cost of evaluating a UCQ
def ucq (s,o,m,r,n_atoms_query,n_unf,non_redundant_unf):
    c_cq=c_eval_cq(s,o,n_atoms_query)                           # cost of a single cq in the unfolding
    n_results_cq = ((s-o) * one_percent)                        # number of results of a single cq in the unfolding
    n_nondistinct_res=n_results_cq * n_unf                      # number of results in a single 
    n_distinct_res=n_results_cq * non_redundant_unf             # number of distinct results 
    dups_ratio=1 - float(n_distinct_res) / n_nondistinct_res    # duplicates ratio
    cost = n_unf * c_cq + cu * n_distinct_res - (n_unf - 1) * c_cq * dups_ratio * c_opt
    return cost

# Parameters: selectivity, offset, number of atoms in the query
# Returns: the cost of evaluating a CQ
def c_eval_cq(s,o,n_atoms):
    n_results_cq = ((s-o) * one_percent)
    c_hjoin = n_atoms * n_results_cq * cj # cost of the CQ is the cost of performing the hash-join
    return c_hjoin

# Parameters: selectivity, offset, mappings, redundant
# Returns: The cost of evaluating a JUCQ
def jucq (s,o,m,r):
    n_unf_1 = n_unf_fragment(m,n_atoms_frag_1)                        # number of CQs in the unfolding for fragment 1
    n_unf_2 = n_unf_fragment(m,n_atoms_frag_2)                        # number of CQs in the unfolding for fragment 2
    n_fresh_unf_1 = n_unf_fragment_fresh(m,r,n_atoms_frag_1)          # number of non-redundant CQs in the unfolding for fragment 1
    n_fresh_unf_2 = n_unf_fragment_fresh(m,r,n_atoms_frag_2)          # number of non-redundant CQs in the unfolding for fragment 2
    ceval_1 = ucq(s,o,m,r,n_atoms_frag_1,n_unf_1,n_fresh_unf_1)       # cost of evaluating fragment 1
    ceval_2 = ucq(s,o,m,r,n_atoms_frag_2,n_unf_2,n_fresh_unf_2)       # cost of evaluating fragment 2
    n_results_1 = n_fresh_unf_1 * ((s-o) * one_percent)               # number of results fragment 1
    n_results_2 = n_fresh_unf_2 * ((s-o) * one_percent)               # number of results fragment 2

    non_redundant_unf = (m-r)**n_atoms_query
    cardinality_ucq = non_redundant_unf * ((s-o) * one_percent)       # number of distinct results
    n_results = cardinality_ucq
    
    cmat = c_mat(n_atoms_frag_2)                                      # materialization cost for fragment 2. We assume fragment 1 to be pipelined, hence not materialized.
    cmjoin = c_mjoin(n_results)                                       # Merge-join cost
        
    cost = cdb + ceval_1 + ceval_2 + (n_frags-1)*cmat + cmjoin        # The -1 is due to the pipelined fragment 1

    return cost

#  Returns: Cost of materializing n tuples
def c_mat(n_results):
    cost = n_results * cm
    return cost

# Returns: Cost of a merge-join over n tuples
def c_mjoin(n_results):
    c_sort = n_results * math.log(n_results,log_base) * csorttwotuples
    cost = c_sort + n_results * cj
    return cost

def n_unf_fragment(m,n_atoms):
    return m**n_atoms

def n_unf_fragment_fresh(m,r,n_atoms):
    return (m-r)**n_atoms

costJUCQ = jucq(selectivity,offset,mappings,redundant)
costOntop = ontop(selectivity,offset,mappings,redundant)
winner = "jucq" if costJUCQ < costOntop else "ontop"

print "Cost_JUCQ %d Cost_Ontop %d Winner %s" % (costJUCQ, costOntop, winner)
