import 'package:flutter/material.dart';

main() {
  runApp(PrimeiroApp());
}

class PrimeiroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Meu Primeiro App Flutter",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        backgroundColor: Colors.orange,
        leading: const Icon(
          Icons.person,
        ),
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Text("Texto4"),
              Text("Texto5"),
              Text("Texto6"),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              print('Botão clicado');
            },
            child: const Text('Primeiro Botão'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 4, left: 16, right: 87),
            child: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
    );
  }
}
