db.awards1287.aggregate([
  // Duplication
  {$project: {
      "origDoc": "$$ROOT",
      "actDoc": [1, 2]
  }},
  {$unwind: "$actDoc"},
  // Specialization
  {$project: {
      "actDoc": 1,
      "doc1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$origDoc", else: "$dummy"}},
      "doc2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$origDoc", else: "$dummy"}}
   }},
   // Sub-query 1
   {$match: {$or: [{"actDoc": {$ne: 1}}, {"doc1.awards": {$exists: true, $ne: null, $ne: []}}]}},
    {$unwind: {
        path: "$doc1.awards",
        preserveNullAndEmptyArrays: true
    }},
    // Filter
    {$project: {
         "actDoc": true,
         "doc1": true,
         "doc2": true,
         "satCond": {$or: [{$ne: ["$actDoc", 1]}, {$lt: ["$doc1.birth", ISODate("1940-01-01")]}]}
     }},
    {$match: {"satCond": true}},
    {$project : {
       "actDoc": true,
       "doc2": true,
       "doc1.an1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.awards.award", else: "$dummy"}},
       "doc1.ay1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.awards.year", else: "$dummy"}},
       "doc1.fn1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.name.first", else: "$dummy"}},
       "doc1.ln1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.name.last", else: "$dummy"}},
       "doc1.bd1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.birth", else: "$dummy"}}
     }},
     // Sub-query 2
    {$match: {$or: [{"actDoc": {$ne: 2}}, {"doc2.awards": {$exists: true, $ne: null, $ne: []}}]}},
    {$unwind: {
        path: "$doc2.awards",
        preserveNullAndEmptyArrays: true
    }},
    {$project : {
       "actDoc": true,
       "doc1": true,
       "doc2.an2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.awards.award", else: "$dummy"}},
       "doc2.ay2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.awards.year", else: "$dummy"}},
       "doc2.fn2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.name.first", else: "$dummy"}},
       "doc2.ln2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.name.last", else: "$dummy"}},
     }},
     // Normalization
     {$group: {
         _id: null,
         "rel1": {$addToSet: "$doc1"},
         "rel2": {$addToSet: "$doc2"}
     }},
     // Cross-product
     {$unwind: "$rel1"},
     {$unwind: "$rel2"},
     // Joining condition
     {$project: {
         "rel1": true,
         "rel2": true,
         "satCond": {$and: [
             {$eq: ["$rel1.ay1", "$rel2.ay2"]},
             {$eq: ["$rel1.an1", "$rel2.an2"]},
             {$or: [
                 {$ne: ["$rel1.fn1", "$rel2.fn2"]},
                 {$ne: ["$rel1.ln1", "$rel2.ln2"]},
                 ]}
         ]}
     }},
     {$match: {"satCond": true}},
     // Filter q1 (born before 1950)
     {$project: {
         "rel1": true,
         "rel2": true,
         "satCond": {$lt: ["$rel1.bd1", ISODate("1950-01-01")]}
     }},
     {$match: {"satCond": true}},
     // Final projection
     {$project: {
         _id: false,
         "an1": "$rel1.an1",
         "ay1": "$rel1.ay1",
         "fn1": "$rel1.fn1",
         "ln1": "$rel1.ln1",
         "bd1": "$rel1.bd1",
         "fn2": "$rel2.fn2",
         "ln2": "$rel2.ln2",
     }}
])