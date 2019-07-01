from flask import Flask, jsonify, make_response, request

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello world"

@app.route('/rand', methods=['GET'])
def get_rand():
    val = random()
    return jsonify({'val': val})

@app.route('/add/', methods=['GET'])
def get_add():
    a = request.args.get('a', 1, type=int)
    b = request.args.get('b', 1, type=int)
    return jsonify({'a': a, 'b': b, 'sum': a+b})

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'ERR': '404 Not Found'}), 404)

def random():
    return 1984

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8090, debug=True)
