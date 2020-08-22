import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_flare/smart_flare.dart';

class ButtonAnimation extends StatefulWidget {
  static final String id = "Button-ANimation";

  @override
  _ButtonAnimationState createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation> {





  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    var animationHeight = 251.0;
    var animationWidth = 295.0;

    var animaitonWidthThirds = animationWidth/3;
    var halfanimaitonHeight = animationHeight/2;

    var activeAreas = [
      ActiveArea(area: Rect.fromLTWH(0,0,animaitonWidthThirds,halfanimaitonHeight),
     // debugArea: true,
        animationName: 'camera_tapped',
        guardComingFrom: ['deactivate'],
      ),

      ActiveArea(area: Rect.fromLTWH(animaitonWidthThirds,0,animaitonWidthThirds,halfanimaitonHeight),
      //  debugArea: true,
        animationName: 'pulse_tapped',
        guardComingFrom: ['deactivate'],
      ),

      ActiveArea(area: Rect.fromLTWH(animaitonWidthThirds*2,0,animaitonWidthThirds,halfanimaitonHeight),
      //  debugArea: true,
        animationName: 'image_tapped',
        guardComingFrom: ['deactivate'],
      ),





      ActiveArea(area: Rect.fromLTWH(
          0, animationHeight / 2, animationWidth, animationHeight / 2),
        //  debugArea: true,
          animationsToCycle: ["activate", "deactivate"],
          onAreaTapped: (){
        print('Toggle Animation!');
          })
    ];


    return Scaffold(
      backgroundColor: Color.fromARGB(255,102,18,222),
     body: Align(
       alignment: Alignment.bottomCenter,
       child: SmartFlareActor(
         width: animationWidth,
         height: animationWidth,
         filename: "images/button-animation.flr",
         startingAnimation: "deactivate",
         activeAreas: activeAreas,
       ),
     )
    );
  }
}
