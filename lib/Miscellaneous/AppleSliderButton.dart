import 'package:fluix/Components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class AppleSliderButton extends StatelessWidget {
  static final String path = "lib/Miscellaneous/AppleSliderButton.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(),
      ),
      body: Container(
        child: Center(
          child: SliderButton(
            action: (){
              Navigator.of(context).pop();
            },
            label: Text(
              "Slide to go back!",
              style: TextStyle(color: Color(0xff4a4a4a),fontWeight: FontWeight.bold,fontSize: 17),
            ),
            icon: Icon(Icons.power_settings_new,color: Colors.grey,)
          ),
        ),

      ),
    );
  }
}
