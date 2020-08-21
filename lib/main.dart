
import 'package:flutter/material.dart';

import 'Screens/Drawers/wavedrawer.dart';
import 'Screens/Grids/animatedgridview.dart';
import 'Screens/Grids/staggeredgrid.dart';
import 'Screens/Lists/ListWheelscrollview.dart';
import 'Screens/Lists/slidelist.dart';
import 'Screens/Lists/stacklist.dart';
import 'Screens/authenticationui/screens/login_page.dart';
import 'Screens/authenticationui/screens/signup_page.dart';





void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        '/signup' : (BuildContext context) => SignupPage()
      },
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter UI"),
      ),
      body: Container(
        padding: EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            
                RaisedButton(onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SlidelistPage()),
  );
                },
                child: Text("List1"),
                ),
          SizedBox(height:20),
           RaisedButton(onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => StacklistPage()),
  );
           },
           child: Text("List2"),
           ),
          SizedBox(height:20),
           RaisedButton(onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ListWheelScrollViewApp()),
  );
           },
           child: Text("List3"),
           ),
          SizedBox(height:20),
          RaisedButton(onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => StaggeredGridPage()),
  );
           },
           child: Text("Grid1"),
           ),
          SizedBox(height:20),
          RaisedButton(onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AnimateGridPage(title: 'Animated Container Demo')),
  );
          },
          child: Text("Grid2"),
          ),
          SizedBox(height:20),
           RaisedButton(onPressed: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
           },
           child: Text("AuthUI"),
           ),
          SizedBox(height:20),
          RaisedButton(onPressed: () {
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WaveDrawerPage()),
  );
          },
          child: Text("Drawer"),
          ),
          SizedBox(height:20),

          ],
        ),
      ),
      
    );
  }
}

