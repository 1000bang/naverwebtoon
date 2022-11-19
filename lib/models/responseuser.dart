class ResponseData{
  var username;
  var email;
  var id;


  ResponseData.fromJson(Map<String, dynamic> map)
      : username = map["data"]["username"],
        email = map["data"]["email"],
        id = map["data"]["id"];



 @override
  String toString() {
    return '서버로부터 받은 값 : \nusername: $username\nemail: $email}';
  }
}