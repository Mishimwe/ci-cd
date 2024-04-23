from flask import Flask

app = Flask(__name__)

@app.route('/ready')
def ready():
    return 'Ready', 200

@app.route('/healthz')
def healthz():
    return 'OK', 200
    
@app.route('/')
def entrypoint():
    return 'Hello World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
