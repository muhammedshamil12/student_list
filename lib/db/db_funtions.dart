import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_list/db/data_model.dart';

ValueNotifier<List<StudentModel>> studentListNotifier =ValueNotifier([]);

Future<void> addStudent(StudentModel value)async {
final studentDB = await Hive.openBox<StudentModel>('Student_db') ;
 final _id = await studentDB.add(value);
 value.id =_id ;
 
 studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
Future<void>getAllStudents()async {
  final studentDB = await Hive.openBox<StudentModel>('Student_db') ;
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();
  
  

}
Future<void>deleteStudent(int id)async {
  final studentDB = await Hive.openBox<StudentModel>('Student_db') ;
await  studentDB.delete(id);
  getAllStudents();

}