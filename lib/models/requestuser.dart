class RequestData{

  var username;
  var password;
  var email;



  RequestData({this.username, this.password, this.email});

  Map<String, dynamic>toJsonJoin(){
    Map<String,dynamic> data = {};
    data["username"] = username;
    data["password"] = password;
    data["email"] = email;
    return data;
  }

  Map<String, dynamic>toJsonlogin(){
    Map<String,dynamic> data = {};
    data["username"] = username;
    data["password"] = password;
    return data;
  }



  @override
  String toString() {
    return '서버에게 요청한 값 : \nusername: $username \npassword: $password \nemail: $email}';
  }



}