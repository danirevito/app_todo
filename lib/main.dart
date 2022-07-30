import 'package:app_todo/modules/cadastre/cadastre_view.dart';
import 'package:app_todo/modules/login/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CadastreView(),
    );
  }
}
