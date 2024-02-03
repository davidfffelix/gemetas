import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          ListTile(
            title: const Text('Nome da tarefa'),
            subtitle: const Text('Descrição da tarefa'),
            trailing: Checkbox.adaptive(value: false, onChanged: (value) {}),
          ),
          ListTile(
            title: const Text('Nome da tarefa'),
            subtitle: const Text('Descrição da tarefa'),
            trailing: Checkbox.adaptive(value: false, onChanged: (value) {}),
          ),
          ListTile(
            title: const Text('Nome da tarefa'),
            subtitle: const Text('Descrição da tarefa'),
            trailing: Checkbox.adaptive(value: false, onChanged: (value) {}),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
