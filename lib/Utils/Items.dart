import 'package:fluix/Authentication/Login1.dart';
import 'package:fluix/Authentication/SignUp1.dart';
import 'package:fluix/Drawer/Drawer1.dart';
import 'package:fluix/Lists/List1.dart';
import 'package:flutter/material.dart';

class Items {
  final String title;
  final Widget page;
  final String path;

  Items(this.title, this.page, this.path);
}

List<Items> authentication = [
  Items("Authentication 1", Login1(), Login1.path),
  Items("Authentication 2", SignUp1(), SignUp1.path),
  Items("Authentication 3", SignUp1(), SignUp1.path),
];

List<Items> settings = [
  Items("Settings 1", Drawer1(), Drawer1.path),
  Items("Settings 2", List1(), List1.path),
  Items("Settings 3", List1(), List1.path),
];

List<Items> profile = [
  Items("Profile 1", Login1(), Login1.path),
  Items("Profile 2", Login1(), Login1.path),
  Items("Profile 3", Login1(), Login1.path),
];

List<Items> dashboard = [
  Items("Dashboard 1", Login1(), Login1.path),
  Items("Dashboard 2", Login1(), Login1.path),
  Items("Dashboard 3", Login1(), Login1.path),
];

List<Items> drawer = [
  Items("Drawer 1", Login1(), Login1.path),
  Items("Drawer 2", Login1(), Login1.path),
  Items("Drawer 3", Login1(), Login1.path),
];

List<Items> navigation = [
  Items("Navigation 1", Login1(), Login1.path),
  Items("Navigation 2", Login1(), Login1.path),
  Items("Navigation 3", Login1(), Login1.path),
];

List<Items> lists = [
  Items("Lists 3", List1(), List1.path),
  Items("Lists 1", List1(), List1.path),
  Items("Lists 1", List1(), List1.path),
];

List<Items> grids = [
  Items("Grids 1", Login1(), Login1.path),
  Items("Grids 2", Login1(), Login1.path),
  Items("Grids 3", Login1(), Login1.path),
];