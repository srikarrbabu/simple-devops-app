from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify(
        message="DevOps Pipeline Status: Active",
        version="1.0.0",
        status="Success"
    )

if __name__ == '__main__':
    # Running on 0.0.0.0 makes it accessible outside the container
    app.run(host='0.0.0.0', port=5000)