import 'package:flutter/material.dart';

class ListagemTarefas extends StatefulWidget {
  const ListagemTarefas({Key? key}) : super(key: key);

  @override
  State<ListagemTarefas> createState() => _ListagemTarefasState();
}

class _ListagemTarefasState extends State<ListagemTarefas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.only(
                    right: 15,
                    bottom: 15,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    "images/coruja.png",
                    width: 90,
                    height: 90,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Text(
                  'Suas Listagens',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Busque palavra-chave',
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  maxLines: 12,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Escreva uma descrição para sua tarefa',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white60,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.lightBlue,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.lightGreen,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Icon(
                    Icons.clear_rounded,
                    size: 100.0,
                    color: Colors.white,
                  ),
                  width: 150,
                  height: 150,
                ),
                Container(
                  child: Icon(
                    Icons.check_rounded,
                    size: 100.0,
                    color: Colors.white,
                  ),
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
