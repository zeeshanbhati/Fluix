import 'package:flutter/material.dart';

Widget kTextField (String labelText, Icon prefixIcon, FocusNode focusNode, String textField) {
  return Material(
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: TextField(
      focusNode: focusNode,
      onChanged: (value) {textField = value;},
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.blue),
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        prefixIcon: prefixIcon,
        labelStyle: TextStyle(color: focusNode.hasFocus ? Colors.blue : Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
  );
}