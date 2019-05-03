#importing libraries 
from flask import Flask, render_template

#Flask app
app = Flask(__name__)


#Route created for index.html 
@app.route("/")
def index():
    country_list = ["USA", "Germany", "France", "UK", "Russia"]
    return render_template("index.html", list=country_list)

if __name__ == "__main__"
    app.run(debug=True)