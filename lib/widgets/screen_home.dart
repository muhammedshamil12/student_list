import 'package:flutter/material.dart';
import 'package:student_list/db/db_funtions.dart';
import 'package:student_list/widgets/addstundent_widget.dart';
import 'package:student_list/widgets/liststudent_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.backspace)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            const Expanded(child: ListStudentWidget()),
          ],
        ),
      ),
    );
  }
}
