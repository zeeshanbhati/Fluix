import 'package:fluix/Authentication/AnimatedLogin.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Authentication/home1.dart';
import 'package:fluix/Drawer/Foldable.dart';
import 'package:fluix/Drawer/Hidden.dart';
import 'package:fluix/Drawer/Elastic.dart';
import 'package:fluix/Drawer/Wave.dart';
import 'package:fluix/Grids/AnimatedGrid.dart';
import 'package:fluix/Grids/Staggered.dart';
import 'package:fluix/Lists/WheelScroll.dart';
import 'package:fluix/Lists/Slidelist.dart';
import 'package:fluix/Lists/Stacklist.dart';
import 'package:fluix/Navigation/CircleBottomBar.dart';
import 'package:fluix/Navigation/ConvexNavigaiton.dart';
import 'package:fluix/Navigation/CurvedNavigation.dart';
import 'package:fluix/Navigation/GoogleBar.dart';
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
  Items("Card Based", Home1(), Home1.path),
  Items("Authentication 4", Login2(), Login2.path),
];

List<Items> drawer = [
  Items("Hidden", Drawer1(), Drawer1.path),
  Items("Foldable", Foldable(), Foldable.path),
  Items("Elastic", Elastic(), Elastic.path),
  Items("Wave", Wave(), Wave.path),
];

List<Items> navigation = [
  Items("Curved", CurvedNavigation(), CurvedNavigation.path),
  Items("Circular", CircleBottomBar(), CircleBottomBar.path),
  Items("Google Bar", GoogleBar(), GoogleBar.path),
  Items("Convexed", ConvexNavigation(), ConvexNavigation.path),
];

List<Items> lists = [
  Items("Wheel Scroll", WheelScroll(), WheelScroll.path),
  Items("Stacked", StackList(), StackList.path),
  Items("Slideable", SlideList(), SlideList.path),
];

List<Items> grids = [
  Items("Staggered", Staggered(), Staggered.path),
  Items("Animated", AnimatedGrid(), AnimatedGrid.path),
];

List<Items> settings = [
  Items("Settings 1", Elastic(), Elastic.path),
  Items("Settings 2", Elastic(), Elastic.path),
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
];
