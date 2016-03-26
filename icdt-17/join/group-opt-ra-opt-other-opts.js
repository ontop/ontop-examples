db.awards1287.aggregate([
  {$match: {"awards": {$exists: true, $ne: null, $ne: []}}},
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
    {$match: {$or: [{"actDoc": {$ne: 1}}, {"doc1.birth": {$lt: ISODate("1940-01-01")}}]}},
    {$unwind: {
        path: "$doc1.awards",
        preserveNullAndEmptyArrays: true
    }},
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
    {$unwind: {
        path: "$doc2.awards",
        preserveNullAndEmptyArrays: true
    }},
    // Joining (projects merged)
    {$project : {
       "doc1": true,
       "doc2.an2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.awards.award", else: "$dummy"}},
       "doc2.ay2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.awards.year", else: "$dummy"}},
       "doc2.fn2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.name.first", else: "$dummy"}},
       "doc2.ln2": {$cond: {if: {$eq: ["$actDoc", 2]}, then: "$doc2.name.last", else: "$dummy"}},
       "g1": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.ay1", else: "$doc2.awards.year"}},
       "g2": {$cond: {if: {$eq: ["$actDoc", 1]}, then: "$doc1.an1", else: "$doc2.awards.award"}}
     }},
     {$group: {
         _id: {
             "g1": "$g1",
             "g2": "$g2"},
         "doc1": {$addToSet: "$doc1"},
         "doc2": {$addToSet: "$doc2"},
     }},
     {$unwind: "$doc1"},
     {$unwind: "$doc2"},
     {$project:{
         "doc1": true,
         "doc2": true,
         "satCond": {$or: [
             {$ne: ["$doc1.fn1", "$doc2.fn2"]},
             {$ne: ["$doc1.ln1", "$doc2.ln2"]}
             ]}
     }},
     {$match: {"satCond": true}},
     // Final projection
     {$project: {
         _id: false,
         "an1": "$doc1.an1",
         "ay1": "$doc1.ay1",
         "fn1": "$doc1.fn1",
         "ln1": "$doc1.ln1",
         "bd1": "$doc1.bd1",
         "fn2": "$doc2.fn2",
         "ln2": "$doc2.ln2",
     }}
])