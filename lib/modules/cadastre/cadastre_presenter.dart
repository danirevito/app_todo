import 'package:app_todo/modules/cadastre/cadastre_model.dart';
import 'package:flutter/material.dart';

class CadastrePresenter with ChangeNotifier {
  CadastreModel model = CadastreModel();

  setName(String name) {
    model.nome = name;
    notifyListeners();
  }
}