import 'package:file_picker/file_picker.dart';
import 'package:fluix/Authentication/AnimatedLogin.dart';
import 'package:fluix/Authentication/Login2.dart';
import 'package:fluix/Authentication/Login3.dart';
import 'package:fluix/Authentication/Simple.dart';
import 'package:fluix/Authentication/home1.dart';
import 'package:fluix/Dashboard/Dashboard1.dart';
import 'package:fluix/Drawer/AwesomeSliderDrawer.dart';
import 'package:fluix/Drawer/Foldable.dart';
import 'package:fluix/Drawer/Hidden.dart';
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
import 'package:fluix/Miscellaneous/AppleSliderButton.dart';
import 'package:fluix/Miscellaneous/AwesomeFluidSlider.dart';
import 'package:fluix/Miscellaneous/BiometricAuth.dart';
import 'package:fluix/Miscellaneous/CustomDialogBox.dart';
import 'package:fluix/Miscellaneous/FilePicker.dart';
import 'package:fluix/Miscellaneous/FoldableCard.dart';
import 'package:fluix/Miscellaneous/PagesTransitions.dart';
import 'package:fluix/Miscellaneous/SliverAppBarAnimation.dart';
import 'package:fluix/Miscellaneous/SuccessAnimation.dart';
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
  Items("Card Based", Home1(), Home1.path),
  Items("Authentication 4", Login2(), Login2.path),
  Items("Login 3", AuthThreePage(), AuthThreePage.path)

];

List<Items> drawer = [
  Items("Hidden", Drawer1(), Drawer1.path),
  Items("Foldable", Foldable(), Foldable.path),
  Items("Elastic", Elastic(), Elastic.path),
  Items("Wave", Wave(), Wave.path),
  Items("AwesomeSlider",AwesomeSliderDrawer(),AwesomeSliderDrawer.path)
];

List<Items> navigation = [
  Items("Curved", CurvedNavigation(), CurvedNavigation.path),
  Items("Circular", CircleBottomBar(), CircleBottomBar.path),
  Items("Google Bar", GoogleBar(), GoogleBar.path),
  Items("Convexed", ConvexNavigation(), ConvexNavigation.path),
  Items("Basic Tab Navigation",BasicTabNavigation(),BasicTabNavigation.path)
];

List<Items> lists = [
  Items("Wheel Scroll", WheelScroll(), WheelScroll.path),
  Items("Stacked", StackList(), StackList.path),
  Items("Slideable", SlideList(), SlideList.path),
  Items("SimpleRecycleView",RecycleListView(),RecycleListView.path),
];

List<Items> grids = [
  Items("Staggered", Staggered(), Staggered.path),
  Items("Animated", AnimatedGrid(), AnimatedGrid.path),

];

List<Items> settings_profile = [
  Items("Settings 1", Profile1(), Profile1.path),
  Items("Settings 2",Settings2(),Settings2.path),
  Items('DashBoard 1',SimpleDashBoard(),SimpleDashBoard.path),

];


List<Items> introslider = [
  Items("Intro slider",Introslider1(),Introslider1.path),
  Items("Intro slider 2",IntroSlider2(),IntroSlider2.path),
  Items("Intro slider 3",LiquidIntroSlider(),LiquidIntroSlider.path),
  Items("Intro Slider 4",IntroSlider3(),IntroSlider3.path),
  Items("Intro Slider 5",IntroSlider4(),IntroSlider4.path),
];

List<Items> miscellaneous = [
  Items("Custom Success Dialog",CustomDialogAlert(title:"Success",imagepath: "images/XLpr.gif",desc: "Customizable images and text",buttontxt: "OK",),CustomDialogAlert.path),
  Items("Custom Error Dialog",CustomDialogAlert(title:"Failed",imagepath: "images/cross 1.jpeg",desc: "Customizable images and text",buttontxt: "OK",),CustomDialogAlert.path),
  Items("Biometrics",BiometricAuth(),BiometricAuth.path),
  Items("SliverAppBarAnimation",SliverAppBarAnimation(),SliverAppBarAnimation.path),
  Items("Success Animation",SuccessAnimation(),SuccessAnimation.Path),
  Items("FoldableCard",FoldableCard(),FoldableCard.path),
  Items("Page Transitions",PagesTransitions(),PagesTransitions.path),
  Items("File Picker",PickFiles(),PickFiles.path),
  Items("Fluid Slider",AwesomeFluidSlider(),AwesomeFluidSlider.path),
  Items("Apple Slider Button",AppleSliderButton(),AppleSliderButton.path)


];

