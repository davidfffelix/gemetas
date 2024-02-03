import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final titleTextControl = TextEditingController();
  final descriptionTextControl = TextEditingController();
  final deadlineTextControl = TextEditingController();
  final orderImportanceTextControl = TextEditingController();
  final orderPriorityTextControl = TextEditingController();

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
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return Column(
                    children: [
                      TextFormField(
                        controller: titleTextControl,
                        decoration: const InputDecoration(
                          hintText: 'Título da meta',
                        ),
                      ),
                      TextFormField(
                        controller: titleTextControl,
                        decoration: const InputDecoration(
                          hintText: 'Descrição da meta',
                        ),
                      ),
                      TextFormField(
                        controller: titleTextControl,
                        decoration: const InputDecoration(
                          hintText: 'Data limite',
                        ),
                      ),
                      TextFormField(
                        controller: titleTextControl,
                        decoration: const InputDecoration(
                          hintText: 'Ordem de importância (valor de 1 a 10)',
                        ),
                      ),
                      TextFormField(
                        controller: titleTextControl,
                        decoration: const InputDecoration(
                          hintText: 'Ordem de prioridade (valor de 1 a 10)',
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
