from flask import Flask, render_template, redirect
 
app = Flask(__name__)

main ="main"
itemList =["list1","list2"]
@app.route('/two')
def home():
    return render_template('layout_02.html',count =itemList,main=main)


app.run(port=5000, debug=True)