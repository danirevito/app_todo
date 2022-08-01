import 'package:app_todo/modules/login/login_presenter.dart';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final _emailControler = TextEditingController();
  final _senhaControler = TextEditingController();
  bool enableObscure = false;

  @override
  Widget build(BuildContext context) {
    SingleChildScrollView;
    return Scaffold(backgroundColor: Colors.purple, body: loginColumn());
  }

  Widget loginColumn() {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          logoLovepeople(),
          textinfo(),
          formUsuario(),
          formSenha(),
          textForgotPassword(),
          buttonEntrar(),
          textNewUser(),
        ],
      ),
    );
  }

  Widget buttonEntrar() {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                _emailControler.text;
                _senhaControler.text;
                () {
                  paginaDaLista(context);
                };
                () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('email ,ou senha invalidos'),
                    ),
                  );
                };
              }
              Navigator.of(context).pushNamed('/homepage');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade900,
              onPrimary: Colors.white,
              side: const BorderSide(
                color: Colors.white,
              ),
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            child: const Text(
              'Entrar',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }

  Widget textForgotPassword() {
    return RichText(
      text: TextSpan(
          text: "Esqueceu seu login ou senha? ",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'Clique aqui.',
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 14,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _formkey.currentState?.reset();
                    Future.delayed(
                      const Duration(seconds: 1),
                    );

                    print("clicou");
                  }),
          ]),
    );
  }

  Widget textNewUser() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: RichText(
        text: TextSpan(
            text: 'Não possui cadastro? ',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Clique aqui.',
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 17,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed('/cadastro');
                      print("clicou");
                    }),
            ]),
      ),
    );
  }

  Widget formSenha() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                obscureText: !enableObscure,
                controller: _senhaControler,
                validator: (value) {
                  _senhaControler.text = value!;
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatòrio';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      enableObscure ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(() {
                        enableObscure = !enableObscure;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'senha',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3101B9),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget formUsuario() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                controller: _emailControler,
                validator: (value) {
                  _emailControler.text = value!;
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatòrio';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  hintText: 'Numero de telefone, email, ou CPf',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3101B9),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textinfo() {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Text(
        'Que bom que voce voltou !',
        style: TextStyle(
            fontFamily: 'Montserrat-Bold', color: Colors.white, fontSize: 25),
      ),
    );
  }

  Widget logoLovepeople() {
    return Container(
      height: 270,
      width: 530,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(190),
          bottomRight: Radius.circular(190),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Image.asset("images/coruja.png"),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: const Text(
              'Lovepeople',
              style: TextStyle(
                  color: Color(0xFF3101B9),
                  fontFamily: 'Montserrat-Bold',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void paginaDaLista(BuildContext context) {}
}
