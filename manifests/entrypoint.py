from flask import Flask

app = Flask(__name__)

@app.route('/Pierre')

def hello():
    return 'Hello everyone'
