import 'package:flutter/material.dart';
import 'package:student_list/widgets/screen_home.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

  @override
  void initState() {
    gotoLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(8),
              child: Image.network('https://logo.com/image-cdn/images/kts928pd/production/c2fcbae1ac2dcdbf24af1e394b95cde0635cbc70-731x731.png?w=1080&q=72'),

            ),
            Text("Student List",style: TextStyle(color: Colors.black),),

          ],
        ),  
      ),
    );

  }
  Future<void>gotoLogin()async{
   await Future.delayed(Duration( seconds: 5 ));
   Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScreenHome(),),);

  }
}
