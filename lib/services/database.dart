import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethodsDetails {
  Future addGoal(Map<String, dynamic> goalInfoMap, String id) async {
    return await FirebaseFirestore.instance.collection('Goal').doc(id).set(goalInfoMap);
  }
}
