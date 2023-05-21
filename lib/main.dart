import 'package:ecampus/providers/logandregisproviders.dart';
import 'package:ecampus/studentpage/mainpage.dart';
import 'package:flutter/material.dart';
import 'mvc/ui/loginpages/email-5.dart';
import 'mvc/welcometoecampus.dart';
import 'package:provider/provider.dart';

bool isadmin = false;
TextEditingController test = new TextEditingController();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
  
      
      //:mainpage(),
      ///welcometoecampus    mainpage
      ///mainpage    home    createpasscod   thirdcameracheckid(email:test,docs: '',)
      
    
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECAMPUS',
      home: 
      // email_5()
      // ,
      welcometoecampus(),
      debugShowCheckedModeBanner: false,
    );
  }
}

