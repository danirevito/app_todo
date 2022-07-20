import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(top: 30),
                child: Form(
                  key: _formkey,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
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
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: 'Numero de telefone, email, ou CPf',
                            hintStyle: TextStyle(
                              fontSize: 12,
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
                padding: const EdgeInsets.only(top: 20),
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
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: 'senha',
                            hintStyle: TextStyle(
                              fontSize: 12,
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
            padding: const EdgeInsets.only(left: 100, right: 100),
          ),

          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Entrar',style: TextStyle(),),
          ),
       ],
      ),
    );
  }
}








              // Center(
              //   child: Container(
              //     width: 300,
              //     child: TextField(
              //       decoration: InputDecoration(
              //         filled: true,
              //         fillColor: Color.fromARGB(250, 250, 250, 250),
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         labelText: 'senha',
              //       ),
              //     ),
              //   ),
              // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
               
          

              
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Form(
//                   key: _formkey,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: _senhaControler,
//                           validator: (value) {
//                             _senhaControler.text = value!;
//                             if (value.isEmpty) {
//                               return 'Campo Obrigatòrio';
//                             }
//                             return null;
//                           },
//                           decoration: const InputDecoration(
//                             contentPadding: EdgeInsets.all(10),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                             ),
//                             hintText: 'senha',
//                             hintStyle: TextStyle(
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               color: Color(0xFF3101B9),
//                             ),
//                             fillColor: Colors.white,
//                             filled: true,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//            ],
//          ),
//           const Padding(
//             padding: const EdgeInsets.only(left: 100, right: 100),
//           ),

//           ElevatedButton(
//             onPressed: () {
//             },
//             child: const Text('Entrar'style: TextStyle(),),
//           ),
//        ],
//       ),
//     );
//   }
// }
