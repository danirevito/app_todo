
import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}












// body: Center(
//         child: Container(
//           color: Colors.purple,
//           alignment: Alignment.center,
//            padding:const EdgeInsets.all(170),
           
//           child:const  Text(
//             'Que bom que voltou',
//             style: (TextStyle(
//               fontSize:20,
//             )),
//             ),
//         ),
//       ),
//       );
//   }
// } 