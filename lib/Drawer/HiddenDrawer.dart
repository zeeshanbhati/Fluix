import 'package:fluix/Navigation/demoScreen/DemoScreen1.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen2.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen3.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN

class Drawer1 extends StatelessWidget {
  static final String path = "lib/Drawers/HiddenDrawer.dart";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HiddenDrawer(),
    );
  }
}

class HiddenDrawer extends StatefulWidget {
  HiddenDrawer({Key key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Screen 1",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        DemoScreen1()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Screen 2",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        DemoScreen2()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name:"Demo 3",
          baseStyle: TextStyle(color:Colors.white.withOpacity(0.8),fontSize: 28.0),
        ), DemoScreen3()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: items,
      //    typeOpen: TypeOpen.FROM_RIGHT,
      //    disableAppBarDefault: false,
       //  enableScaleAnimin: true,
       //   enableCornerAnimin: true,
      //    slidePercent: 80.0,
          verticalScalePercent: 80.0,
          contentCornerRadius: 40.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
         enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );

  }
}
