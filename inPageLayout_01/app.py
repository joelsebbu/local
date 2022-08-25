from flask import Flask, render_template, redirect
 
app = Flask(__name__)

itemList =[1,2,3,4,6]
@app.route('/')
def home():
    return render_template('layout_02.html',count =itemList)


app.run(port=5000, debug=True)