import 'package:app_todo/modules/login/login_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPresenter extends ChangeNotifier{
  final LoginPresenter _loginRepository;
  LoginPresenter(this._loginRepository); 

  Future loginUser(String email, String senha) async {
    return _loginRepository.loginUser(email, senha);
 
  }
  
}
  Future<bool> validacaoToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('jwt') != null) {
      return true;
    } else {
      return false;
    }
  }

void postFrame(Function execute) {
  Future.delayed(Duration.zero, () {
    execute();
  });
}