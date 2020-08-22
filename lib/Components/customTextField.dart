import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final IconData icon;

  final bool isEmail;MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.icon,
    this.isPassword = false,
    this.isEmail = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: hintText,
            prefixIcon: Icon(icon),
           isDense: true,
            labelStyle: TextStyle(letterSpacing: 1.0,fontSize: 15.0),
            alignLabelWithHint: true,
            prefixIconConstraints: BoxConstraints(maxHeight:3,minWidth:30),
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrangeAccent))
            
             
            //contentPadding: EdgeInsets.all(15.0),
            

          ),
          obscureText: isPassword ? true : false,
          validator: validator,
          onSaved: onSaved,
          keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        ),
      ),
    );
  }
}

