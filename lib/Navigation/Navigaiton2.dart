import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'demoScreen/DemoScreen1.dart';
import 'demoScreen/DemoScreen2.dart';
import 'demoScreen/DemoScreen3.dart';
import 'demoScreen/DemoScreen4.dart';

class Navigation2 extends StatefulWidget {
  static final String id = 'Navigation2';
  @override
  _Navigation2State createState() => _Navigation2State();
}

class _Navigation2State extends State<Navigation2> {

  int _currentindex = 0;
  final List<Widget> _children = [
    DemoScreen1(),
    DemoScreen2(),
    DemoScreen3(),
    DemoScreen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation2"),
      ),
      body: _children[_currentindex],

      bottomNavigationBar: ConvexAppBar(
        items:[
          TabItem(icon: Icon(Icons.add_a_photo,size: 20,),title: "Photo"),
          TabItem(icon: Icon(Icons.home,size: 20,),title: "Home"),
          TabItem(icon: Icon(Icons.chat,size: 20,),title: "Chat"),
          TabItem(icon: Icon(Icons.missed_video_call,size: 20,),title: "Video"),
        ],
        initialActiveIndex: 0,
        onTap: (int index){

         setState(() {
           _currentindex = index;
         });
        },
      ),
    );
  }
}
