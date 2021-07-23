from flask import Flask, request, render_template, session, redirect
from DBConnection import Db

app = Flask(__name__)
app.secret_key = "abc123"


@app.route('/')
def start():
    return render_template('login.html')


@app.route('/login', methods=['post'])
def login():
    db = Db()
    username = request.form['username']
    password = request.form['password']
    qry = "select * from login WHERE username='" + username + "' and password='" + password + "'"
    res = db.selectOne(qry)
    if res is not None:
        session['check'] = 1
        session['login_id'] = res['id']
        current_question = res['current_stage']
        if current_question >= 6:
            return render_template("success.html")
        else:
            return quiz(str(current_question))
    else:

        return render_template('login.html')


@app.route('/quiz2/<c>', methods=['post'])
def quiz2(c):
    if session['check'] == 1:
        next = int(c) + 1
        db = Db()
        ans = request.form['ans']
        print(ans)
        qry4 = "update login set current_stage='" + str(next) + "' where id='" + str(session['login_id']) + "'"
        db.update(qry4)

        if c == "1":
            qry1 = "update user_now set one='" + str(ans) + "' where id='" + str(session['login_id']) + "'"
            db.update(qry1)
            return quiz(str(next))

        elif c == "2":
            qry1 = "update user_now set two='" + str(ans) + "' where id='" + str(session['login_id']) + "'"
            db.update(qry1)
            return quiz(str(next))

        elif c == "3":
            qry1 = "update user_now set three='" + str(ans) + "' where id='" + str(session['login_id']) + "'"
            db.update(qry1)
            return quiz(str(next))

        elif c == "4":
            qry1 = "update user_now set four='" + str(ans) + "' where id='" + str(session['login_id']) + "'"
            db.update(qry1)
            return quiz(str(next))

        elif c == "5":
            qry1 = "update user_now set five='" + str(ans) + "' where id='" + str(session['login_id']) + "'"
            db.update(qry1)
            return render_template("success.html")

        else:
            return render_template("closed.html")
    else:
        return render_template('login.html')


@app.route("/quiz")
def quiz(a):
    if session['check'] == 1:
        db = Db()
        qry2 = "select * from quetions_answers where id='" + a + "'"
        res2 = db.selectOne(qry2)
        return render_template("quiz.html", data=res2)
    else:
        return render_template('login.html')


@app.route('/logout')
def logout():
    session['check'] = " "
    return render_template('login.html')


if __name__ == '__main__':
    app.run()
