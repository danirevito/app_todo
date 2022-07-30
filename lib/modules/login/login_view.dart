import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailControler = TextEditingController();
  //final _senhaControler = TextEditingController();
  bool enableObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 152, 36, 172),
      body: loginColumn(),
    );
  }

  Widget loginColumn() {
    return Column(
      children: [
        logoLovepeople(),
        textinfo(),
        formUser(),
        formPasswword(),
        textForgotPassword(),
        buttonConfirm(),
        textNewUser(),
      ],
    );
  }

  Widget buttonConfirm() {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade900,
            onPrimary: Colors.white,
            side: BorderSide(
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
    );
  }

  Widget textForgotPassword() {
    return RichText(
     
      text: TextSpan(
          text: "Esqueceu seu login ou senha? ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'Clique aqui.',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 14,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("clicou");
                  }),
          ]),
    );
  }

  Widget textNewUser() {
    return RichText(
      text: TextSpan(
          text: 'Não possui cadastro? ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'Clique aqui.',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 17,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("clicou");
                    Navigator.of(context).pushNamed('/cadastro');
                  }),
          ]),
    );
  }

  Widget formPasswword() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                // controller: _senhaControler,
                validator: (value) {
                  //   _senhaControler.text = value!;
                  // if (value.isEmpty) {
                  // return 'Campo Obrigatòrio';
                  //}
                  return null;
                },
                decoration: const InputDecoration(
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

  Widget formUser() {
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
                  if (value.isEmpty) {
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
      padding: EdgeInsets.only(top: 50),
      child: Text(
        'Que bom que voce voltou !',
        style: TextStyle(
            fontFamily: 'Montserrat-Bold', color: Colors.white, fontSize: 25),
      ),
    );
  }

  Widget logoLovepeople() {
    return Container(
      height: 290,
      width: 550,
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
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 60),
            child: const Text(
              'Lovepeople',
              style: TextStyle(
                  color: Color(0xFF3101B9),
                  fontFamily: 'Montserrat-Bold',
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
