import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column (children: [
          Container(
            height: 290,
            width: 550,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.only(
                bottomLeft: Radius.circular(190),
                bottomRight: Radius.circular(190),) ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: const EdgeInsets.only(top:30 ),
                      child: Image.asset(

                        'assets/logo.png'),

                      ),
                    ]),
                ),
          ),

        ],
        ),
         ),
    );
  }
}
