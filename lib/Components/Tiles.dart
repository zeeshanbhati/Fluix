import 'package:flutter/material.dart';

Widget tiles (String text, IconData icon) {
  return ExpansionTile(
    leading: Icon(icon),
    title: Text(text),
    trailing: Icon(Icons.keyboard_arrow_down),
    // children: settings.map((text) => ListTile(
    //   leading: Icon(Icons.subdirectory_arrow_right,),
    //   title: Text(text, style: TextStyle(fontSize: 16.0),),
    //   onTap: (){},
    // )).toList(),
  );
}