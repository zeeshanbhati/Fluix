import 'dart:async';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluix/Screens/Home.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(
    DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
        brightness: enableDarkMode ? Brightness.dark : Brightness.light,
      ),
      themedWidgetBuilder: (context, theme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: enableDarkMode ? darkTheme(context) : lightTheme(context),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
        },
      ),
    ),
  );
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            SizedBox(height: 25,),
            Text("FLUIX", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),),
            SizedBox(height: 20,),
            SpinKitDualRing(color: Colors.lightBlue, size: 40,),
          ],
        ),
      ),
    );
  }
}