from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello, World!</h1><p>Welcome to the OpenCode Testing Lab Flask application.</p>'

@app.route('/health')
def health_check():
    return {'status': 'healthy', 'message': 'Flask app is running'}

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)
