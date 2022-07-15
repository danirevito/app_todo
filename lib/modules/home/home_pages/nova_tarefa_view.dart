import 'package:flutter/material.dart';

class NovaTarefa extends StatefulWidget {
  const NovaTarefa({Key? key}) : super(key: key);

  @override
  State<NovaTarefa> createState() => _NovaTarefaState();
}

class _NovaTarefaState extends State<NovaTarefa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.white,
      ),
      body: InkWell(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'https://drive.google.com/file/d/1M8Fdw3ldcHPzjO_hUmJum5PkXpA-pNac/view?usp=drivesdk',
                    width: 30,
                    height: 30,
                  ),
                ),
                Container(
                  height: 90,
                  width: 300,
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 10,
                    left: 60,
                    right: 60,
                  ),
                  child: const Text(
                    'Nova Tarefa',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Título da Tarefa',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
