// <<<<<<< rafa/nova_tarefa
// import 'package:app_todo/modules/cadastre/cadastre_view.dart';
// import 'package:app_todo/modules/home/home_pages/nova_tarefa_view.dart';

// =======
// import 'package:app_todo/modules/home/home_view.dart';
// >>>>>>> master
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
// <<<<<<< rafa/nova_tarefa
//       home: const NovaTarefa(),
// =======
//       home: const ListagemTarefas(),
// >>>>>>> master
    );
  }
}
