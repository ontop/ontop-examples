Role of foreign keys
====================

Let us now consider the case where foreign keys are missing.
Please download the following files: [university-no-fk.ttl](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-no-fk.ttl)
and [university-no-fk.obda](https://github.com/ontop/ontop-examples/raw/master/ekaw-tutorial-2016/session2/university-no-fk.obda) files.

Foreign keys play a crucial for optimizing the saturated mapping assertions by doing some query containment checks.

Let us consider the case of `foaf:Person` as discussed during the talk.
If you run the following SPARQL query in the absence of foreign keys:

```sparql
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p
WHERE {
  ?p a foaf:Person .
}
```

you will obtain a SQL query similar to the following one:

```sql
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni2/person/' || QVIEW1."lab_teacher") AS "p"
 FROM
"uni2"."course" QVIEW1
WHERE
QVIEW1."lab_teacher" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni2/person/' || QVIEW1."lecturer") AS "p"
 FROM
"uni2"."course" QVIEW1
WHERE
QVIEW1."lecturer" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/academic/' || QVIEW1."a_id") AS "p"
 FROM
"uni1"."teaching" QVIEW1
WHERE
QVIEW1."a_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni2/person/' || QVIEW1."pid") AS "p"
 FROM
"uni2"."registration" QVIEW1
WHERE
QVIEW1."pid" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/student/' || QVIEW1."s_id") AS "p"
 FROM
"uni1"."course-registration" QVIEW1
WHERE
QVIEW1."s_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/student/' || QVIEW1."s_id") AS "p"
 FROM
"uni1"."student" QVIEW1
WHERE
QVIEW1."s_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/academic/' || QVIEW1."a_id") AS "p"
 FROM
"uni1"."academic" QVIEW1
WHERE
QVIEW1."a_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni2/person/' || QVIEW1."pid") AS "p"
 FROM
"uni2"."person" QVIEW1
WHERE
QVIEW1."pid" IS NOT NULL
```

This SQL query is the union of 8 sub-queries. Basically, it queries
the tables `uni1.student`, `uni1.academic`, `uni2.person` as expected, but also
`uni1.teaching`, `uni1.course-registration`, `uni2.course` and `uni2.registration`.
Recall that the presence of the four latter tables is due to the fact that, according to the ontology, the respective domains of the properties `:givesLecture`, `:givesLab` and `:attends` are subsumed by `foaf:Person`.


With the setting of the first session which includes foreign keys, the SQL query contains only 3 unions:

```sql
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/student/' || QVIEW1."s_id") AS "p"
 FROM
"uni1"."student" QVIEW1
WHERE
QVIEW1."s_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni1/academic/' || QVIEW1."a_id") AS "p"
 FROM
"uni1"."academic" QVIEW1
WHERE
QVIEW1."a_id" IS NOT NULL
UNION ALL
SELECT
   1 AS "pQuestType", NULL AS "pLang", ('http://example.org/uni2/person/' || QVIEW1."pid") AS "p"
 FROM
"uni2"."person" QVIEW1
WHERE
QVIEW1."pid" IS NOT NULL
```

### Side note

If we now consider also the first and the last names of persons, foreign keys are not needed to optimize the query.

Try:

```sparql
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p ?firstName ?lastName
WHERE {
  ?p a foaf:Person ;
     foaf:firstName ?firstName ;
     foaf:lastName ?lastName .
}
```
and observe that the query produces only 3 unions.

Why? Because the domain of `foaf:firstName` and `foaf:lastName` is `foaf:Person`.
The SPARQL query can thus be safely rewritten as follow:

```sparql
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?p ?firstName ?lastName
WHERE {
  ?p foaf:firstName ?firstName ;
     foaf:lastName ?lastName .
}
```

[Next: choice of URI template](uri-templates.md)
