from flask import Flask, jsonify, request
from flask_pymongo import PyMongo
from bson.json_util import dumps
from bson.objectid import ObjectId
from werkzeug.security import generate_password_hash, check_password_hash
import urllib

onlineURI = "mongodb+srv://Tech1:" + urllib.parse.quote_plus(
    "@Tech1Corpo") + " @cluster0.vxofk.mongodb.net/<dbname>?retryWrites=true&w=majority"
localURI = "mongodb://localhost:27017/QuickTrace"
app = Flask(__name__)
app.secret_key = '@Tech1Corporation_QuickTrace'
app.config["MONGO_URI"] = localURI
mongo = PyMongo(app)


@app.route('/createIndividualAccount', methods=['POST'])
def createIndividualAccount():
    _json = request.json
    _Fullname = _json['Fullname']
    _Address = _json['Address']
    _ContactNo = _json['ContactNo']
    _Password = _json['Password']

    if _Fullname and _Address and _ContactNo and _Password and request.method == "POST":
        _hashedPassword = generate_password_hash(_Password)
        id = mongo.db.IndividualAccounts.insert_one({
            'Fullname': _Fullname,
            'Address': _Address,
            'ContactNo': _ContactNo,
            'Password': _Password
        })
        resp = jsonify("Success")
        resp.status_code = 200
        return resp
    else:
        return not_found()


@app.route('/createCompanyAccount', methods=['POST'])
def createCompanyAccount():
    _json = request.json
    _Fullname = _json['Fullname']
    _Email = _json['Email']
    _ContactNo = _json['ContactNo']
    _Password = _json['Password']

    if _Fullname and _Email and _ContactNo and _Password and request.method == "POST":
        _hashedPassword = generate_password_hash(_Password)
        id = mongo.db.CompanyAccounts.insert_one({
            'Fullname': _Fullname,
            'Email': _Email,
            'ContactNo': _ContactNo,
            'Password': _Password
        })
        resp = jsonify("Success")
        resp.status_code = 200
        return resp
    else:
        return not_found()


@app.route('/submitScannedDevicesList', methods=['POST'])
def submitScannedDevicesList():
    _json = request.json
    _Fullname = _json['Fullname']
    _UserBLAddress = _json['UserBLAddress']
    _ScannedDeviceBLAddress = _json['ScannedDeviceBLAddress']
    _ContactNo = _json['ContactNo']

    if _Fullname and _UserBLAddress and _ScannedDeviceBLAddress and _ContactNo and request.method == "POST":
        id = mongo.db.ScannedDevicesRecords.insert_one({
            'Fullname': _Fullname,
            'UserBLAddress': _UserBLAddress,
            'ScannedDeviceBLAddress': _ScannedDeviceBLAddress,
            'ContactNo': _ContactNo
        })
        resp = jsonify("Success")
        resp.status_code = 200
        return resp
    else:
        return not_found()


@app.route('/submitEmployeeDTR', methods=['POST'])
def submitEmployeeDTR():
    _json = request.json
    _Fullname = _json['Fullname']
    _Date = _json['Date']
    _TimeIn = _json['TimeIn']
    _TimeOut = _json['TimeOut']
    _ContactNo = _json['ContactNo']

    if _Fullname and _Date and _TimeIn and _TimeOut and _ContactNo and request.method == "POST":
        id = mongo.db.EmployeeDTR.insert_one({
            'Fullname': _Fullname,
            'Date': _Date,
            'TimeIn': _TimeIn,
            'TimeOut': _TimeOut,
            'ContactNo': _ContactNo
        })
        resp = jsonify("Success")
        resp.status_code = 200
        return resp
    else:
        return not_found()


@app.route('/checkIfContactNoUsed/<contactNo>', methods=['GET'])
def checkIfContactNoUsed(contactNo):
    userInfo = mongo.db.IndividualAccounts.find_one({'ContactNo': contactNo})
    resp = dumps(userInfo)
    return resp


@app.route('/checkIfEmailUsed/<email>', methods=['GET'])
def checkIfEmailUsed(email):
    userInfo = mongo.db.CompanyAccounts.find_one({'Email': email})
    resp = dumps(userInfo)
    return resp


@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
        'message': 'Not found' + request.url
    }
    resp = jsonify(message)
    resp.status_code = 404
    return resp


if __name__ == "__main__":
    app.run(debug=True)
