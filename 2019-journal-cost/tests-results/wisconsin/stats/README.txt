** Content of the Folder **

X in {db2,mssql,oracle,postgres}

- X-{est,nativeest}-vs-time.csv: evaluation results versus estimated results (est: by our cost model; nativeest: by the native cost model from the RDBMS)

** Column Headers Explanation **

- os: Offset
- i: number of mappings
- j: number of redundant mappings
- real-card: real cardinality
- eval-query: identifier of the query being evaluated (e.g., "1" identifies query "q1")
- eval-ucq: mean evaluation time for the UCQ unfolding
- eval-jucq: mean evaluation time for the JUCQ unfolding
- eval-off: same as os
- eval-m: same as i
- eval-r: same as j
- eval-winner: best evaluation time between UCQ unfolding (`ontop`) and JUCQ unfolding (`jucq`)
- est-query: same as eval-query
- est-ucq: estimated cost for the UCQ unfolding
- est-jucq: estimated cost for the JUCQ unfolding
- est-off: same as eval-off
- est-m: same as eval-m
- est-r: same as eval-r
- est-winner: least estimated cost between UCQ unfolding (`ontop`) and JUCQ unfolding (`jucq`)
