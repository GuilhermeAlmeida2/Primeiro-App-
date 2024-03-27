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
  const TelaInicio({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomePage",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF7D60A1),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Text("Every Purchase\n Will be Made\n With Pleasure"),
              Text("Buy and Enjoy")
            ],
          ),
          ElevatedButton (
            onPressed: () {
              print("Hello Name_User");
            },
            child: const Text("Start Shopping"),
          ),
          ElevatedButton(
            onPressed: () {
              print("Hello Name_User");
            },
            child: const Text("Start Shopping"),
          ),
          ElevatedButton(
            onPressed: () {
              print("Hello Name_User");
            },
            child: const Text("Start Shopping"),
          ),
        ],
      ),
    );
  }
}
