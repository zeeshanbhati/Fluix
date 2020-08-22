import 'package:fluix/Authentication/Login1.dart';
import 'package:fluix/Components/Raisedbtn.dart';
import 'package:fluix/Components/TextField.dart';
import 'package:flutter/material.dart';

class SignUp1 extends StatefulWidget {
  static final String id = "SignUp1";
  static final String path = "lib/Authentication/SignUp1.dart";

  @override
  _SignUp1State createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  FocusNode nameFN, usernameFN, passwordFN, emailFN, soccodeFN;
  String name, username, password, email, soccode;

  @override
  void initState() {
    nameFN = FocusNode();
    usernameFN = FocusNode();
    passwordFN = FocusNode();
    emailFN = FocusNode();
    soccodeFN = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    nameFN.dispose();
    usernameFN.dispose();
    passwordFN.dispose();
    emailFN.dispose();
    soccodeFN.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
                ],
              ),
              SizedBox(height: 10,),
              Center(child: Text("Let's Get Started!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),)),
              SizedBox(height: 10,),
              Center(child: Text("Create an account at FLUIX", style: TextStyle(color: Colors.grey),)),
              SizedBox(height: 60,),
              GestureDetector(
                onTap: () {FocusScope.of(context).requestFocus(nameFN);},
                child: kTextField("Full Name", Icon(Icons.person), nameFN, name),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {FocusScope.of(context).requestFocus(usernameFN);},
                child: kTextField("Username", Icon(Icons.person), usernameFN, username),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {FocusScope.of(context).requestFocus(emailFN);},
                child: kTextField("E-Mail", Icon(Icons.home), emailFN, email),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {FocusScope.of(context).requestFocus(passwordFN);},
                child: kTextField("Password", Icon(Icons.vpn_key), passwordFN, password),
              ),
              SizedBox(height: 25,),
              kRaisedButton(150, "CREATE", () {}),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account? ", style: TextStyle(color: Colors.black87,),),
                  GestureDetector(
                    onTap: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login1()));},
                    child: Text("Login here", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}