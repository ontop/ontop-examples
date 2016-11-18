Bonus: existential reasoning
============================

To enable the tree-witness query rewriting, go to "Preferences", then to the "Ontop reasoner" tab and enable the option "reasoning over anonymous individuals".

Then, restart the reasoner and try the following query:

```sparql
PREFIX : <http://example.org/voc#>

SELECT ?x
WHERE {
   ?x :isSupervisedBy [ a :Professor ] .
}
```

Note that there is no mapping assertion for the property `:isSupervisedBy`. Results are obtained from the following rewritten query:

```sparql
PREFIX : <http://example.org/voc#>

SELECT ?x
WHERE {
   ?x a :GraduateStudent .
}
```
