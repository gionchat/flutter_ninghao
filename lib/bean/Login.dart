/// Result : 1
/// Msg : "操作成功"
/// Data : {"userName":"","headImgPath":"http://127.0.0.1:8002/Files/userpic/15324878973.jpg"}

class Login {
  int _result;
  String _msg;
  Data _data;

  int get result => _result;
  String get msg => _msg;
  Data get data => _data;

  Login({
      int result, 
      String msg, 
      Data data}){
    _result = result;
    _msg = msg;
    _data = data;
}

  Login.fromJson(dynamic json) {
    _result = json["Result"];
    _msg = json["Msg"];
    _data = json["Data"] != null ? Data.fromJson(json["Data"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Result"] = _result;
    map["Msg"] = _msg;
    if (_data != null) {
      map["Data"] = _data.toJson();
    }
    return map;
  }

}

/// userName : ""
/// headImgPath : "http://127.0.0.1:8002/Files/userpic/15324878973.jpg"

class Data {
  String _userName;
  String _headImgPath;

  String get userName => _userName;
  String get headImgPath => _headImgPath;

  Data({
      String userName, 
      String headImgPath}){
    _userName = userName;
    _headImgPath = headImgPath;
}

  Data.fromJson(dynamic json) {
    _userName = json["userName"];
    _headImgPath = json["headImgPath"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userName"] = _userName;
    map["headImgPath"] = _headImgPath;
    return map;
  }

}