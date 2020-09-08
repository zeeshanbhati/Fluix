import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

class PreviewCode extends StatefulWidget {
  Widget page;
  PreviewCode({@required this.page});
  @override
  _PreviewCodeState createState() => _PreviewCodeState();
}

class _PreviewCodeState extends State<PreviewCode> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "FLUIX",
              style: TextStyle(
                  color: enableDarkMode ? Colors.teal[300] : Colors.blue[600]),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(icon),
                onPressed: () {
                  setState(() {
                    if (icon == Icons.brightness_3) {
                      icon = Icons.wb_sunny;
                      enableDarkMode = true;
                    } else {
                      icon = Icons.brightness_3;
                      enableDarkMode = false;
                    }
                    DynamicTheme.of(context).setBrightness(
                        enableDarkMode ? Brightness.dark : Brightness.light);
                  });
                },
              ),
            ],
            bottom: TabBar(tabs: <Widget>[
              Tab(
                child: Text(
                  "Code",
                  style: TextStyle(
                      color: enableDarkMode ? Colors.grey : Colors.black54),
                ),
                icon: Icon(Icons.code,
                    color: enableDarkMode ? Colors.grey : Colors.black54),
              ),
              Tab(
                child: Text(
                  "Preview",
                  style: TextStyle(
                      color: enableDarkMode ? Colors.grey : Colors.black54),
                ),
                icon: Icon(Icons.phone_android,
                    color: enableDarkMode ? Colors.grey : Colors.black54),
              ),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("Code here")),
              widget.page,
            ],
          )),
    );
  }
}
