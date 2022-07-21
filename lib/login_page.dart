import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          Container(
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
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Que bom que voce voltou !',
                  style: TextStyle(
                      fontFamily: 'Montserrat-Bold',
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
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
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 60,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF3101B9)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(10),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          // ),
          const Padding(
            padding: EdgeInsets.all(40),
          ),
          SizedBox(height: 30),
          const Text(
            'Já possui cadastro? Clique aqui',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
