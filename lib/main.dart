import 'package:flutter/material.dart';
import 'package:flutter_practise_design/Screens/bmi_calculator.dart';
import 'package:flutter_practise_design/Screens/gridview_design/gridview_design_screen.dart';
import 'package:flutter_practise_design/Screens/gridview_design/listview_gridview_design.dart';
import 'package:flutter_practise_design/Screens/gridview_design/main_screen_stack_screen.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/main_screen.dart';
import 'package:flutter_practise_design/Screens/whatsapp_ui/whatsapp_main_screen.dart';
// import 'package:flutter_practise_design/Screens/bmi_calculator.dart';
// import 'package:flutter_practise_design/Screens/login_signup_ui/signup_screen.dart';
import 'package:flutter_practise_design/Screens/mr_tip_calculator.dart';
import 'package:flutter_practise_design/Screens/wscube_page.dart';
import 'package:flutter_practise_design/widget/check.dart';

import 'Screens/simple_calculator_app.dart';
// import 'package:flutter_practise_design/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiCalculatorScreen(),
    );
  }
}

