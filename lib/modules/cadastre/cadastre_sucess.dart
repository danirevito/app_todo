import 'package:flutter/material.dart';

class CadastreSucess extends StatelessWidget {
  const CadastreSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 152, 36, 172),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 500,
            height: 300,
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Cadastro concluído!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Começar", style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    side: BorderSide(color: Colors.white),
                    primary: Color.fromARGB(255, 12, 7, 155),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 24),
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 500,
            height: 300,
            //width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(195),
                  topRight: Radius.circular(195),
                )),
            child: Column(
              children: [
                Container(
                  //alignment: AlignmentDirectional.topCenter,
                  child: Image.asset(
                    "images/voacoruja.png",
                    width: 90,
                    height: 90,
                    //fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Os ventos da programação estão indo até você",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 4, 71), fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
