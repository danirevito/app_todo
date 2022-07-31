import 'dart:convert';

import 'package:app_todo/modules/login/login_model.dart';
import 'package:http/http.dart ' as http;

class LoginRepository {
  get http => null;

  Future postUser(
    String _emailController,
    String passwordContoller,
  ) async {
    Uri url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local');
    var response = await http.post(url,
        Body: {'identifier': _emailController, 'password': passwordContoller});
    if (response.statusCode == 200) {
      
      Map json = jsonDecode(response.body);
      print("legal, vc logou");
    } else {
      print('que pena ,email ou senha invalidos');
    }
  }
}
