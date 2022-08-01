 import 'package:app_todo/modules/cadastre/cadastre_model.dart';
import 'package:flutter/material.dart';

class CadastrePresenter with ChangeNotifier {
  CadastreModel model = CadastreModel();
  void alternaExibeSenha(){
  model.obscurePassword = !model.obscurePassword;
  notifyListeners();
  }
}