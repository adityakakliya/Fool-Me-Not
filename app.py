from flask import Flask, render_template, request
from flask_mysqldb import MySQL
app = Flask(__name__)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'dbase'

mysql = MySQL(app)


@app.route('/', methods=['GET'])
def test_route():
    cur = mysql.connection.cursor()
    cur.execute(
        "SELECT * FROM questions where category = (%s) ORDER BY RAND() LIMIT 1", ('O'))
    data = cur.fetchall()
    
    cur.execute(
        "SELECT * FROM questions where category = (%s) ORDER BY RAND() LIMIT 1", ('C'));
    data += cur.fetchall()
    cur.execute(
        "SELECT * FROM questions where category = (%s) ORDER BY RAND() LIMIT 1", ('E'));
    data += cur.fetchall()
    cur.execute(
        "SELECT * FROM questions where category = (%s) ORDER BY RAND() LIMIT 1", ('A'));
    data += cur.fetchall()
    cur.execute(
        "SELECT * FROM questions where category = (%s) ORDER BY RAND() LIMIT 1", ('N'));
    data += cur.fetchall()

    # cur.execute("SELECT * FROM questions")

    # print (data[0])
    
    return render_template('test.html', data=data)


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        details = request.form

        print(details)
        print('aerwaefsdf', details['user'])

        indices = []
        for x in details:
            if x != 'user':
                indices.append(int(x))
        print(indices)

        user = details['user']

        score = {"userid": user}
        cur = mysql.connection.cursor()

        yy = []
        for x in details:
            if x != 'user':
                yy.append(int(details[x]))

        print('tuple', yy)
        for i in range(len(indices)):
            # execute query to get key
            # cur.execute("INSERT INTO MyUsers(firstName, lastName) VALUES (%s, %s)", (firstName, lastName))
            cur.execute(
                "select kys from questions where id = (%s)", (indices[i],))
            key = cur.fetchall()
            k = [float(s) for s in key[0]][0]
            print(k)

        # execute query to get alpha
            cur.execute(
                "select alpha from questions where id = (%s)", (indices[i],))
            alpha = cur.fetchall()
            a = [float(s) for s in alpha[0]][0]
            print(a)

            cur.execute(
                "select category from questions where id = (%s)", (indices[i],))
            cat = cur.fetchall()
            c = [(s) for s in cat[0]][0]
            print(c)
            # calculate score
            mag = float(yy[i])
            print('choice', mag)

            if k == -1:
                if mag == 1:
                    mag = 5
                if mag == 2:
                    mag = 4
                if mag == 4:
                    mag = 2
                if mag == 5:
                    mag = 1

            for x in score:
                print(x, ':', score[x])
            if c in score:
                score[c] += k*a*mag
            else:
                score[c] = k*a*mag

        for x in score:
            print(x, ' : ', score[x])
            if x != 'userid':
                score[x] /= 4
            else:
            	score[x] = 1

        placeholder = ", ".join(["%s"] * len(score))
        stmt = "insert into `{table}` ({columns}) values ({values});"
        stmt = stmt.format(table="ocean", columns=",".join(score.keys()), values=placeholder)
	    # stmt = "insert into `{table}` ({columns}) values ({values});"

        cur.execute(stmt, list(score.values()))

        mysql.connection.commit()
        cur.close()
        return "success"
    return render_template('index.html')

if __name__ == '__main__':
    app.run()
   
