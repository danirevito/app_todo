import 'package:flutter/material.dart';

class CadastreSucess extends StatelessWidget {
  const CadastreSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 36, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              "Cadastro concluído!",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/homepage');
              },
              child: const Text(
                "Começar",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                side: const BorderSide(color: Colors.white),
                primary: const Color.fromARGB(255, 12, 7, 155),
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 252,
            ),
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(195),
                        topRight: Radius.circular(195),
                      )),
                  child: Column(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topCenter,
                        child: Image.asset(
                          "images/voacoruja.png",
                          width: 220,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        //alignment: Alignment.topCenter,
                        "Os ventos da programação estão indo até você",
                        style: TextStyle(
                            color: Color.fromARGB(255, 152, 36, 172),
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
