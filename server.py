import flask
from flask import jsonify

app = flask.Flask(__name__)

@app.route('/invocations', methods=["POST"])
def invoke():
    return jsonify(hello="world"), 200

@app.route('/ping', methods=["GET"])
def ping():
    return jsonify(success=True), 200