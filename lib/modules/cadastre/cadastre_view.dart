import 'package:app_todo/modules/cadastre/cadastre_presenter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CadastreView extends StatelessWidget {
  CadastreView({Key? key}) : super(key: key);
  //final formKey = GlobalKey<FormState>();
  //final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 72, 218),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                heightFactor: 5,
                child: Text(
                  'Vamos começar!',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Nome',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Número de telefone, e-mail ou CPF',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Senha',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Confirmar senha',
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
              ),
              //SizedBox(height: 20),
              const Center(
                child: TextField(
                  maxLines: 12,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Já possui cadastro? Entrar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ]),
      ),
    );

    // ChangeNotifierProvider(
    //   create: (context) => CadastrePresenter(),
    //   child: Consumer<CadastrePresenter>(
    //       builder: (context, cadastrePresenter, child) {
    //     return Scaffold(
    //       body: Text(cadastrePresenter.model.nome),
    //       floatingActionButton: FloatingActionButton(
    //         onPressed: () => cadastrePresenter.setName('Daniela'),
    //       ),
    //     );
    //   }),
    // );
  }
}
