
import 'package:fluix/Class/slide_animation.dart';
import 'package:flutter/material.dart';





class SlidelistPage extends StatefulWidget {
  SlidelistPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SlidelistPageState createState() => _SlidelistPageState();
}

class _SlidelistPageState extends State<SlidelistPage> with SingleTickerProviderStateMixin {
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