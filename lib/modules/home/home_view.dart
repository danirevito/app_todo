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
      backgroundColor: Color.fromARGB(255, 152, 36, 172),
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
                    suffixIcon: const Icon(Icons.search),
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
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ListTile(
                title: Text(
                  'Teste de título',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ligula metus, venenatis a purus vitae, eleifend cursus odio. Fusce consequat rhoncus convallis.',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_rounded,
                  size: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
