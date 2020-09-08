import 'package:fluix/Authentication/AnimatedLogin.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/Login3.dart';
import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Authentication/home1.dart';
import 'package:fluix/Drawer/HiddenDrawer.dart';
import 'package:fluix/Drawer/FoldableDrawer.dart';
import 'package:fluix/Drawer/Elastic.dart';
import 'package:fluix/Drawer/Wave.dart';
import 'package:fluix/Grids/AnimatedGrid.dart';
import 'package:fluix/Grids/Staggered.dart';
import 'package:fluix/IntroSliders/IntroSlider1.dart';
import 'package:fluix/IntroSliders/IntroSlider2.dart';
import 'package:fluix/IntroSliders/IntroSlider3.dart';
import 'package:fluix/IntroSliders/IntroSlider4.dart';
import 'package:fluix/IntroSliders/LiquidIntroSlider.dart';
import 'package:fluix/Lists/SimpleRecyclerView.dart';
import 'package:fluix/Lists/WheelScroll.dart';
import 'package:fluix/Lists/slidelist.dart';
import 'package:fluix/Lists/stacklist.dart';
import 'package:fluix/Navigation/BasicTabNavigation.dart';
import 'package:fluix/Navigation/CircleBottomBar.dart';
import 'package:fluix/Navigation/ConvexNavigaiton.dart';
import 'package:fluix/Navigation/CurvedNavigation.dart';
import 'package:fluix/Navigation/GoogleBar.dart';
import 'package:fluix/Settings/Setting1.dart';
import 'package:fluix/Settings/Settings2.dart';
import 'package:flutter/material.dart';

class Items {
  final String title;
  final Widget page;
  final String path;

  Items(this.title, this.page, this.path);
}

List<Items> authentication = [
  Items("Simple", Simple(), Simple.path),
  Items("Animated", AnimatedLogin(), AnimatedLogin.path),
  Items("Authentication 3",Home1(),Home1.id),
  Items("Authentication 4",Login2(),Login2.id),
  Items("Auth three",AuthThreePage(),AuthThreePage.path)

];

List<Items> drawer = [
  Items("Elastic", Elastic(), Elastic.path),
  Items("Wave", Wave(), Wave.path),
  Items("Hidden Drawer",Drawer1(),Drawer1.path),
  Items("Foldable Drawer",FoldableDrawer(),FoldableDrawer.path),
];

List<Items> navigation = [
  Items("Navigation 1", Elastic(), Elastic.path),
  Items("Curved Navigation Bar",CurvedNavigation(),CurvedNavigation.path),
  Items("Circle Bottom Navigation",CircleBottomBar(),CircleBottomBar.path),
  Items("Google Navigation Bar",GoogleBar(),GoogleBar.path),
  Items("Convex Navigation Bar",ConvexNavigation(),ConvexNavigation.path),
  Items("Basic Navigation Bar",BasicTabNavigation(),BasicTabNavigation.path),
];

List<Items> lists = [
  Items("Wheel Scroll", WheelScroll(), WheelScroll.path),
  Items("Stack", StackList(), StackList.path),
  Items("Slide", SlideList(), SlideList.path),
  Items("Recyvle", RecycleListView(), RecycleListView.path),
];

List<Items> grids = [
  Items("Staggered", Staggered(), Staggered.path),
  Items("Animated", AnimatedGrid(), AnimatedGrid.path),
];

List<Items> settings = [
  Items("Settings 1", Profile1(), Profile1.path),
  Items("Settings 2",Settings2(),Settings2.path),
  Items("Settings 3", Elastic(), Elastic.path),
];

List<Items> profile = [
  Items("Profile 1", Elastic(), Elastic.path),
  Items("Profile 2", Elastic(), Elastic.path),
  Items("Profile 3", Elastic(), Elastic.path),
];

List<Items> dashboard = [
  Items("Dashboard 1", Elastic(), Elastic.path),
  Items("Dashboard 2", Elastic(), Elastic.path),
  Items("Dashboard 3", Elastic(), Elastic.path),
  Items("Intro slider",Introslider1(),Introslider1.path),
  Items("Intro slider 2",IntroSlider2(),IntroSlider2.path),
  Items("Intro slider 3",LiquidIntroSlider(),LiquidIntroSlider.path),
  Items("Intro Slider 4",IntroSlider3(),IntroSlider3.path),
  Items("Intro Slider 5",IntroSlider4(),IntroSlider4.path),
];

