# the Flask class from the flask module
from flask import Flask, render_template, request, redirect, session

import datetime
import pg
import bcrypt

# create an flask object
app = Flask("MyApp")

# connect to the PostgreSQl database
db = pg.DB(dbname = 'chirps')

# loads the profile page of the session[username]
@app.route('/<user>')
def user_timeline(user):
        query_tweets = db.query('''
            select tweets.author_id, tweets.date_, tweets.content
            from tweets
                left join users on tweets.author_id = users.id
            where users.username = $1
            order by tweets.date_ desc''', user)

        #  count the number of tweets they have posted
        query_num_tweets = db.query('''
            select count(*)
            from tweets
                left join users on tweets.author_id = users.id
            where users.username = $1''', user)

        # get the number of ppl they follow
        query_following = db.query('''
            select count(*)
            from friends
              left join users on friends.peasants = users.id
            where users.username = $1''', user)

        # get the number of ppl that follows them
        query_following_me = db.query('''
            select count(*)
            from friends
              left join users on friends.queen_king_id = users.id
            where users.username = $1''', user)

        # convert the queriers over to an array of tuples
        tweets = query_tweets.namedresult()
        tweet_count = query_num_tweets.namedresult()
        following_count = query_following.namedresult()
        following_me_count = query_following_me.namedresult()

        # print 'tweet_count', tweet_count
        # print tweets
        # print following_count
        # print following_me_count

        # send that information over to the html page to be displayed to the user
        return render_template('user_profile.html',
            name=user,
            tweets = tweets,
            tweet_count = tweet_count,
            following_count = following_count,
            following_me_count = following_me_count)

@app.route('/login')
def login():
    return render_template('login.html')

# when the user hits the login button check that the userename exists in the database
@app.route('/login_form', methods=['POST'])
def login_in():
    user_name = request.form['username']
    secret = request.form['password']
    action = request.form['action']

    # gets the username from the form and takes that name to see if it exist in the database
    query = db.query('''
        select username, pswd
        from users
        where username = $1''',user_name)
    # turns the results from the query into a tulpe
    _user = query.namedresult()

    #if user is trying to register
    if action == 'register':
        query = db.query('''
            select username from users where username = $1''',user_name)
        _user = query.namedresult()

        # if this user does not exist in the database
        # encrypt the pswd and insert the username and password into the user table
        if not _user:
            pw_bytes = secret.encode('utf-8')
            hashed = bcrypt.hashpw(pw_bytes, bcrypt.gensalt())

            db.insert('users', username = user_name, pswd= hashed)

            # take them to the user_timeline
            session['username'] = request.form['username']
            return redirect('/')
        if _user:
            session['username'] = request.form['username']
            return redirect('/')


    #if user is trying to log in
    if action == 'login':
        # if user does not exist in the db
        # redirect them back to the login page
        if _user:
            # check to make sure that the user enter the correct password
            pw_bytes = secret.encode('utf-8')
            # print _user[0].pswd
            if bcrypt.hashpw(pw_bytes,_user[0].pswd) == _user[0].pswd:
                # if the pwsd is correct  create a session and send them to the top level page, where user tweets and followers and following count will be showed
                session['username'] = request.form['username']
                return redirect('/')
        elif not _user:
            print "tried to login user does not exist"
            return redirect('/')

# followe a user
@app.route('/follow', methods=['POST'])
def follow_user():
    # get login user id

    # get id of the user whose page is currently being views
    follow_me = request.form['follow']
    print session['username'], 'wants to follow ', follow_me

    query = db.query('''
        select users.id
        from users
        where users.username in ($1, $2)''',session['username'], follow_me)
    i_want_to_follow = query.namedresult()
    # print i_want_to_follow
    # print i_want_to_follow[0].id
    # print i_want_to_follow[1].id
    db.insert('friends', queen_king_id=i_want_to_follow[1].id, peasants=i_want_to_follow[0].id)


# db.insert into ('friends', )
    return redirect(request.referrer)

# when a user posts a tweet/chirp
@app.route('/post_tweet', methods=['POST'])
def post_tweet():
    # get tweet_chirp from the form
    tweet_chirp = request.form['tweet_chirp']
    print "tweet_chirp", tweet_chirp

    query = db.query('''
        select users.id
        from users
        where users.username = $1''', session['username'])

    is_user = query.namedresult()
    print 'is_user', is_user

    # i = datetime.datetime.now()
    d = datetime.date.today()
    d.isoformat()
    print d.isoformat()
    # insert tweet_chirp into the database for the current user
    db.insert('tweets', content = tweet_chirp, date_= d.isoformat(), author_id =is_user[0][0])

    return redirect('/')

# global timeline, if the user is logged in show their tweets and everyont they followe tweets
# if no user is logged in. show all the tweets in the systems
@app.route('/', methods=['GET'])
def global_timeline():
    if not 'username' in session:
        query = db.query('''
        select users.username,tweets.content, tweets.date_
        from tweets
             left join users on tweets.author_id = users.id''')

        global_tweets = query.namedresult()
        return render_template('global_timeline.html',
            # name=session['username'],
            global_tweets = global_tweets)
    else:
    #  'username' in session:
        user = session['username']

        # get the user tweets and everyone that they follow tweets
        query = db.query('''
            select users.username,tweets.content, tweets.date_
            from tweets
                left join users on tweets.author_id = users.id
            where author_id in (select friends.queen_king_id
                                from friends
                                    left join users on users.id = friends.peasants
                                    where users.username = $1)
            or users.username = $1
            order by date_ desc''', user)
        global_tweets = query.namedresult()

        # print 'global_tweets', global_tweets

        return render_template('global_timeline.html',
            name=session['username'],
            global_tweets = global_tweets)

# log user out
@app.route('/log_out')
def log_out():
    # this is how you clear a session variable

    if 'username' in session:
        del session['username']
    return redirect('/login')


# show user profile page
# @app.route('/user/<username>')
# def show_user_profile(username):
#     # show the user profile for that user
#     return 'User %s' % username
#
#     return redirect('/')
    # db.insert('friends', )


# You have to set up the secret key, or sessions will not work, this is just like with Express.
app.secret_key = 'CSF686CCF85C6FRTCHQDBJDXHBHC1G478C86GCFTDCR'

if __name__ == '__main__':
    app.debug = True
    app.run(debug=True)
