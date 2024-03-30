import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
            style: TextStyle(color: Colors.white, fontSize: 28)),
        backgroundColor: Color(0xFF7D60A1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Every Purchase\n Will be Made\n With Pleasure",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("Buy and Enjoy",
                      style: TextStyle(fontSize: 18.69),
                      textAlign: TextAlign.center),
                ],
              ),
            ],
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),

                // Button 1
                child: ElevatedButton(
                  onPressed: () {
                    print('Botão clicado');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7D60A1),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 25,
                        bottom: 16,
                        right: 25,
                      )),
                  child: const Text(
                    "Start Shopping",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const Padding(
                /* Bottom de butoon */
                padding: EdgeInsets.only(bottom: 20),
              ),

              // Button 2
              ElevatedButton(
                onPressed: () {
                  print("Learn More");
                },
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  
                ),
                child: const Text(
                  "Learn More",
                ),
              ),
              const Padding(
                /* Bottom de butoon */
                padding: EdgeInsets.only(bottom: 20),
              ),

              // Button 3
              ElevatedButton(
                onPressed: () {
                  print("Login");
                },
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.topRight,
                ),
                child: const Text(
                  "Login",
                ),
              ),
              const Padding(
                /* Bottom de butoon */
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
          //top

          // Buttom 2
        ],
      ),
    );
  }
}
