create table users (
  id serial primary key,
  username varchar unique not null
  pswd varchar not null,
  -- email varchar
);

create table tweets (
  id serial primary key,
  content varchar(151),
  date_ date default current_date,
  author_id integer references users (id)
  -- author_username integer references users (username),
  -- tag_id integer
);

create table friends(
  id serial primary key,
  peasants integer references users (id),
  queen_king_id integer references users (id)
);


-- display a user profile timeline , their tweets/retweets only
select tweet.content, tweet.date, tweet.author_id
from tweet
where tweet.author_id = me;

--display user tweets and everyone they followe tweets
select tweet.content, tweet.date, tweet.author_id
from tweet
  left join friends on tweet.author_id = friends.queen_king_id
where friends.peasants = is me or tweet.author_id = me

-- get the number of tweets for a user
select count(*)
from tweets
    left join users on tweets.author_id = users.id
where users.username = me

-- get the number of ppl i am following - i am a peasant to
select count(*)
from friends
  left join user on friends.peasant = user.id
where friends.peasant = me

-- list of ma tweets
select tweets.author_id, users.username,tweets.content, tweets.date_
from tweets
left join users on tweets.author_id = users.id
where users.username = 'Marcellus Anderson';


-- ID of ppl that MA follows
(select friends.queen_king_id
from friends
left join users on users.id = friends.peasants
where users.username = 'Marcellus Anderson');

-- names of the ppl that MA followers
select users.username
from users
where users.id in (select friends.queen_king_id
					from friends
					left join users on users.id = friends.peasants
					where users.username = 'Marcellus Anderson');

-- ppl that MA follow tweets
select users.username,tweets.content, tweets.date_
from tweets
left join users on tweets.author_id = users.id
where author_id in (select friends.queen_king_id
from friends
left join users on users.id = friends.peasants
where users.username = 'Marcellus Anderson')
or users.username = 'Marcellus Anderson'
order by date_ desc;
