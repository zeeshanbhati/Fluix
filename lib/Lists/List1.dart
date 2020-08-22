import 'package:fluix/Components/Tiles.dart';
import 'package:fluix/Utils/listItems.dart';
import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  static final String id = "List1";
  static final String path = "lib/Lists/List1.dart";

  @override
  _List1State createState() => _List1State();
}

class _List1State extends State<List1> {
  
  IconData icon = Icons.brightness_3;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(height: 10,),
          itemCount: uiNames.length,
          itemBuilder: (context, index) => tiles(uiNames[index], uiLogos[index]),
        ),
      ),
    );
  }
}