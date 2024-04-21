from flask import Flask

app = Flask(__name__)

@app.route('/')
def entrypoint():
    return 'Hello World!'

if name == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
