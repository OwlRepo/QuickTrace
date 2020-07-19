from flask import Flask, jsonify, request
from flask_pymongo import PyMongo
from bson.json_util import dumps
from bson.objectid import ObjectId
from werkzeug.security import generate_password_hash,check_password_hash
import urllib

app = Flask(__name__)
app.secret_key = '@Tech1Corporation_QuickTrace'
app.config["MONGO_URI"] = "mongodb+srv://Tech1:"+ urllib.parse.quote_plus("@Tech1Corpo") + " @cluster0.vxofk.mongodb.net/<dbname>?retryWrites=true&w=majority"
mongo = PyMongo(app)
@app.route('/createIndividualAccount',methods= ['POST'])

def createIndividualAccount():
    _json = request.json
    _Fullname = _json['Fullname']
    _Address = _json['Address']
    _ContactNo = _json['ContactNo']
    _Password = _json['Password']

    if _Fullname and _Address and _ContactNo and _Password and request.method == "POST":
        _hashedPassword = generate_password_hash(_Password)
        id = mongo.db.individualAccounts.insert({
            'Fullname': _Fullname,
            'Address': _Address,
            'ContactNo': _ContactNo,
            'Password':_Password
        })
        resp = jsonify("Success")
        resp.status_code = 200
        return resp
    else:
        return not_found()

@app.errorhandler(404)
def not_found(error = None):
    message = {
        'status':404,
        'message': 'Not found' + request.url
    }
    resp = jsonify(message)
    resp.status_code = 404
    return resp

if __name__ == "__main__":
    app.run(debug=True)