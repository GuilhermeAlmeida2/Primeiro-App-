import 'package:flutter/material.dart';

main() {
  runApp(SegundoApp());
}

class SegundoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Home Page com Flutter",
      home: TelaInicio(),
    );
  }
}

class TelaInicio extends StatelessWidget {
  const TelaInicio({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
            style: TextStyle(color: Colors.white, fontSize: 28)),
        backgroundColor: const Color(0xFF7D60A1),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Every Purchase\n Will be Made\n With Pleasure",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Buy and Enjoy",
                          style: TextStyle(fontSize: 18.69),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),

                    // Button 1
                    child: ElevatedButton(
                      onPressed: () {
                        print('Botão clicado');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7D60A1),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              top: 16, left: 25, bottom: 16, right: 25)),
                      child: const Text(
                        "Start Shopping",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Button 2
                  ElevatedButton(
                    onPressed: () {
                      print("Ir para Learn More");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      "Learn More",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),

                  // Button 3
                  ElevatedButton(
                    onPressed: () {
                      print("Ir para Login");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        alignment: Alignment.centerRight),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 10.0,
            right: 16.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF7D60A1),
              ),
              child: IconButton(
                onPressed: () {
                  print("Voltar para o Home Page");
                },
                icon: Icon(Icons.home, color: Colors.white),
                iconSize: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
