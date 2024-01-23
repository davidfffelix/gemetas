import 'package:flutter/material.dart';

import 'register_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gemetas'),
        leading: const Icon(Icons.menu),
        elevation: 1,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const RegisterScreen();
              },
            ),
          );
        },
        label: const Text('Adicionar Meta'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
