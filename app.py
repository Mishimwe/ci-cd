from flask import Flask

app = Flask(name)

@app.route('/')
def entrypoint():
    return 'Hello World!'

if name == '_main':
    app.run(host='0.0.0.0', port=5000, debug=True)
