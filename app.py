#importing libraries 
from flask import Flask, render_template

#Flask app
app = Flask(__name__)


#Route created for index.html 
@app.route("/")
def index():
    country_list = ["USA", "Germany", "France", "UK", "Russia"]
    return render_template("index.html", list=country_list)


@app.route('/events/')
def events():
    return render_template('events.html')


@app.route('/usa/')
def usa():
    return render_template('usa.html')

@app.route('/germany/')
def germany():
    return render_template('germany.html')

@app.route('/uk/')
def uk():
    return render_template('uk.html')

@app.route('/france/')
def france():
    return render_template('france.html')

@app.route('/russia/')
def russia():
    return render_template('russia.html')

@app.route('/sources/')
def sources():
    return render_template('sources.html')

@app.route('/index/')
def indexes():
    return render_template('index.html')



if __name__ == "__main__":
    app.run(debug=True)