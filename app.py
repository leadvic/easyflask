from flask import Flask
import os

PORT = os.environ['PORT']
HTML = os.environ['HTML']

app = Flask(__name__)

@app.route("/")
def home():
        return HTML
app.run(host='0.0.0.0', port=PORT)