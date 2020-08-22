import 'package:flutter/material.dart';

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN

class AnimatedGrid extends StatefulWidget {
  static final String path = "lib/Grids/AnimatedGrid.dart";

  AnimatedGrid({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AnimatedGridState createState() => _AnimatedGridState();
}

class _AnimatedGridState extends State<AnimatedGrid> {
  final selection = List<bool>(10);

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; ++i) {
      selection[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 6,
            itemBuilder: _buildAnimatedContainer));
  }

  Widget _buildAnimatedContainer(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      onTap: () {
        setState(() {
          selection[index] = !selection[index];
        });
      },
      title: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: selection[index] ? Colors.black : Colors.red,
        margin: EdgeInsets.all(selection[index] ? 30.0 : 10.0),
      ),
    );
  }
}