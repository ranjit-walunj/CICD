from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/')
def hello():
    return jsonify(message="Hello, CI/CD!")


@app.route('/health')
def health():
    return jsonify(status="healthy")


if __name__ == '__main__':
    # Removed debug=True for security in non-development environments.
    # In a production setup, debug should always be False.
    # For development, you might use an environment variable to conditionally enable it.
    app.run()