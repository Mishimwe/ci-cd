from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World! Jeune pirate</p>"
if name == 'main':
      app.run(host='0.0.0.0', port=80)
