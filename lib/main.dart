import 'package:fluix/Authentication//home1.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/SignUp2.dart';
import 'package:fluix/Authentication/login1.dart';
import 'package:fluix/Authentication/signUp1.dart';
import 'package:fluix/Drawer/Drawer2.dart';
import 'package:fluix/Extras/button_animation.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen1.dart';
import 'Navigation/demoScreen/DemoScreen2.dart';
import 'Navigation/demoScreen/DemoScreen3.dart';
import 'file:///F:/Flutter_Projects/fluix/lib/Drawer/Drawer1.dart';

import 'package:flutter/material.dart';

import 'Navigation/Navigaiton2.dart';
import 'Navigation/Navigation1.dart';
import 'Navigation/Navigation3.dart';
import 'Navigation/Navigation4.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:ButtonAnimation.id,

      routes:<String,WidgetBuilder>{
        SignUp1.id :(BuildContext context) => SignUp1(),
        Login1.id :(BuildContext context) => Login1(),
        Home1.id:(BuildContext context) => Home1(),
        Navigation1.id:(BuildContext context) => Navigation1(),
        Navigation2.id:(BuildContext context) => Navigation2(),
        Navigation3.id:(BuildContext context) => Navigation3(),
        Navigation4.id:(BuildContext context) => Navigation4(),
        Login2.id:(BuildContext context) => Login2(),
        SignUp2.id:(BuildContext context) => SignUp2(),
        Test.id:(BuildContext context) => Test(),
        Drawer2.id: (BuildContext context) => Drawer2(),
        DemoScreen1.id:(BuildContext context) => DemoScreen1(),
        DemoScreen2.id:(BuildContext context) => DemoScreen2(),
        DemoScreen3.id:(BuildContext context) => DemoScreen3(),
        ButtonAnimation.id:(BuildContext context) => ButtonAnimation()


      }
    );
  }
}