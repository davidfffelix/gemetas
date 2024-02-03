// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:random_string/random_string.dart';

// import 'services/database.dart';
// import 'widgets/elevated_button_widget.dart';
// import 'widgets/text_field_widget.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({
//     super.key,
//   });

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final titleController = TextEditingController();
//   final descriptionController = TextEditingController();
//   final deadlineController = TextEditingController();
//   final orderImportanceController = TextEditingController();
//   final orderPriorityController = TextEditingController();
//   final checkedController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Registrar Metas'),
//         elevation: 1,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextFieldWidget(
//                 text: 'Título',
//                 controller: titleController,
//                 hintText: 'Adicionar Título',
//               ),
//               TextFieldWidget(
//                 text: 'Descrição',
//                 controller: descriptionController,
//                 hintText: 'Adicionar Descrição',
//               ),
//               TextFieldWidget(
//                 text: 'Data Limite',
//                 controller: deadlineController,
//                 keyboardType: TextInputType.number,
//                 hintText: 'Adicionar Data Limite',
//               ),
//               TextFieldWidget(
//                 text: 'Ordem de importância (valor de 1 a 10)',
//                 controller: orderImportanceController,
//                 keyboardType: TextInputType.number,
//                 hintText: 'Adicionar Ordem de Importância',
//               ),
//               TextFieldWidget(
//                 text: 'Ordem de Prioridade (valor de 1 a 10)',
//                 keyboardType: TextInputType.number,
//                 controller: orderPriorityController,
//                 hintText: 'Adicionar Ordem de Prioridade',
//               ),
//               TextFieldWidget(
//                 text: 'Checked',
//                 controller: checkedController,
//                 hintText: 'Adicionar Checked',
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   ElevatedButtonWidget(
//                     text: 'Cancelar',
//                     onPressed: () {},
//                   ),
//                   const SizedBox(width: 10),
//                   ElevatedButtonWidget(
//                     text: 'Registar',
//                     onPressed: () async {
//                       String id = randomAlphaNumeric(10);
//                       Map<String, dynamic> goalInfoMap = {
//                         'Id': id,
//                         'Title': titleController,
//                         'Description': descriptionController,
//                         'Deadline': deadlineController,
//                         'Order of importance': orderImportanceController,
//                         'Priority order': orderPriorityController,
//                         'Checked': checkedController,
//                       };
//                       await DatabaseMethodsDetails()
//                           .addGoal(goalInfoMap, id)
//                           .then(
//                         (value) {
//                           return Fluttertoast.showToast(
//                             msg: "A meta foi adicionada",
//                             toastLength: Toast.LENGTH_SHORT,
//                             gravity: ToastGravity.CENTER,
//                             timeInSecForIosWeb: 1,
//                             backgroundColor: Colors.red,
//                             textColor: Colors.white,
//                             fontSize: 16.0,
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
