import 'package:flutter/material.dart';
import 'package:wave_drawer/wave_drawer.dart';

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN

class Wave extends StatefulWidget {
  static final String path = "lib/Drawer/Wave.dart";
  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF4E5B81),
        title: Text("Wave Drawer Example"),
      ),
      drawer: WaveDrawer(
        backgroundColor: Color(0XFF4E5B81),
        boundaryColor: Colors.blue,
        boundaryWidth: 8.0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'Item 1',
                style: Theme.of(context).primaryTextTheme.headline6
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2',
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Center(child: Icon(Icons.add)),
          onPressed: () => _incrementCount()),
      body: Container(
          color: Color(0XFF27314F),
          child: Center(child: Text('You tapped the button $_count times',style: TextStyle(color: Colors.white),))),
    );
  }
}