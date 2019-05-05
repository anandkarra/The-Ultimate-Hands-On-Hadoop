mongo
mongo --eval "use movielens"
mongo --eval "db.users.find( {use_id: 100} )"
mongo --eval "db.users.explain().find( {user_id: 100} )"
mongo --eval "db.users.createIndex( {user_id: 1} )"
mongo --eval "db.users.find( {use_id: 100} )"
mongo --eval "db.users.aggregate ( [
                                    { $group: { _id: { occupation: "$occupation"}, avgAge: { $avg: "$age" } } }
                                    ] )"
mongo --eval "db.users.count()"
mongo --eval "db.getCollectionInfos()"
mongo --eval "db.users.drop()"
mongo --eval "db.getCollectionInfos()"
exit