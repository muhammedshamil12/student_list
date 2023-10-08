import 'package:flutter/material.dart';
import 'package:student_list/db/data_model.dart';
import 'package:student_list/db/db_funtions.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
       const   SizedBox(height: 10),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Age",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () {
              addStudentButtonClicked();
            },
            icon: Icon(Icons.add),
            label: Text("Add Student"),
          ),
        ],
      ),
    );
  }
  Future<void>addStudentButtonClicked()async{
    final _name = nameController.text.trim();
   final _age = ageController.text.trim();
   
   if( _name.isEmpty||_age.isEmpty){
    return;
   }
   print("$_name $_age");

   final student = StudentModel(name: _name, age: _age);

   addStudent(student);
  }

 }