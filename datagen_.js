/*

datagen.js: generates random data for my-yelp database defined by the schema in my-yelp.sql.

npm install faker

To generate 100 users:

node --max-old-space-size=2048 datagen_.js users 100 |psql chirps


To generate 100 reviewers:

node --max-old-space-size=2048 datagen.js reviewer 100 |psql my-yelp

To generate 100 tweets:
number of tweets and number of users
node --max-old-space-size=2048 datagen_.js tweets 100 100|psql chirps


To generate 100 reviews, where 200 is the current max ID for restaurants and 300 is the current max ID for reviewers:

node --max-old-space-size=2048 datagen.js review 100 200 300 |psql my-yelp

*/

var faker = require('faker');
var moment = require('moment');

function gen(tableName, times, genRow) {
  var keys;
  for (var i = 0; i < times; i++) {
    var row = genRow();
    if (i === 0) {
      keys = Object.keys(row);
      process.stdout.write('insert into ' + tableName + '(' + keys.join(', ') + ') values\n');
    }
    process.stdout.write('(');

    for (var j = 0; j < keys.length; j++) {
      var value = row[keys[j]];
      if (typeof value === 'string') {
        process.stdout.write("'" + value.replace(/'/g, "''") + "'");
      } else {
        process.stdout.write(String(value));
      }
      if (j < keys.length - 1) {
        process.stdout.write(',');
      }
    }

    process.stdout.write(')');

    if (i < times - 1) {
      process.stdout.write(',\n');
    }
  }
  process.stdout.write(';\n');
}

// random date
function randomDate(start, end) {
    return new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
}
// randomDate(new Date(2012, 0, 1), new Date())
// randomDate(new Date(2012, 0, 1), new Date())

var table = process.argv[2];
var count = Number(process.argv[3]);

// if (table === 'restaurant') {
//   gen('restaurant', count, function() {
//     return {
//       name: faker.company.companyName()
//     };
//   });
//
// }
if (table === 'users') {
  gen('users', count, function() {
    return {
      username: faker.name.findName(),
      // pswd: Math.ceil(Math.random() * 7)
    };
  });
} else if (table === 'tweets') {
  var numUsers = Number(process.argv[4]);
  // console.log("number:" ,numUsers);
  // var numReviewers = Number(process.argv[5]);
  gen('tweets', count, function() {
    return {
      content: faker.lorem.sentences().substring(0,151),
      date_: moment(randomDate(new Date(2012, 0, 1), new Date())).format('YYYY,MM,DD'),
      author_id: Math.ceil(Math.random() * numUsers) + 1
    };
  });
} else if (table === 'friends') {
  var queen_king = Number(process.argv[4]);
  var peasant = Number(process.argv[5]);
  gen('friends', count, function() {
    return {
      queen_king_id: Math.ceil(Math.random() * queen_king) + 1,
      peasants: Math.ceil(Math.random() * peasant) + 1
    };
  });
}
