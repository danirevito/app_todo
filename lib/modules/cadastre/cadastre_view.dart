import 'dart:html';

import 'package:app_todo/modules/cadastre/cadastre_presenter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CadastreView extends StatelessWidget {
  CadastreView({Key? key}) : super(key: key);

  Uri url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local/register');

  //http.post(url).then(value) {

  }
  //final formKey = GlobalKey<FormState>();
  //final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (context) => CadastrePresenter(),
      child: Consumer<CadastrePresenter>(
          builder: (context, cadastrePresenter, child) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 152, 36, 172),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    heightFactor: 6,
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
                        floatingLabelBehavior: FloatingLabelBehavior.never,
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
                        floatingLabelBehavior: FloatingLabelBehavior.never,
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
                      obscureText: cadastrePresenter.model.obscurePassword,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: IconButton(
                          icon: Icon(cadastrePresenter.model.obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            cadastrePresenter.alternaExibeSenha();
                          },
                        ),
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
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: IconButton(
                          icon: Icon(cadastrePresenter.model.obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            cadastrePresenter.alternaExibeSenha();
                          },
                        ),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Confirmar senha',
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    child: Text('Cadastrar'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/cadastroConcluido');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      side: BorderSide(color: Colors.white),
                      primary: Color.fromARGB(255, 3, 78, 209),
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 198),
                  Divider(),
                  SizedBox(height: 24),
                  RichText(
                    text: const TextSpan(
                        text: 'Já possui cadastro?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 17,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Entrar',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
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
