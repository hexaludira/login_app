import 'dart:async';

import 'package:login_app/utils/network_util.dart';
import 'package:login_app/models/user.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "https://cloud.mongodb.com/v2/5e5f4a6ed3bba93125727d57#clusters/detail/hexaludira";
  static final LOGIN_URL = BASE_URL + "/login.php";
  static final _API_KEY = "abc";

  Future<User> login(String username, String password) {
    return _netUtil.post(LOGIN_URL, body: {
      "token": _API_KEY,
      "username": username,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }

}
