import 'package:fluix/Components/slide_animation.dart';
import 'package:flutter/material.dart';

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN

class SlideList extends StatefulWidget {
  static final String path = "lib/Lists/SlideList.dart";

  SlideList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SlideListState createState() => _SlideListState();
}

class _SlideListState extends State<SlideList> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, _position) {
          // first we will run the project without adding animation
          // after that we will run with animation
          // as you saw there was no animation at all.
          // lets add animation
          // first we need to create animation controller
          // we need to hot restart the app to see animation
          //

          return SlideAnimation(
            itemCount: 20,
            position: _position,
            slideDirection: SlideDirection.fromRight,
            animationController: _animationController,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text('Item $_position', style: Theme.of(context).textTheme.headline6),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    // don't forget to add this in your dispose method to prevent memory leaks.
    _animationController.dispose();

    super.dispose();
  }
}