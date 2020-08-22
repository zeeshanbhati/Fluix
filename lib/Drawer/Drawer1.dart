import 'package:fluix/Components/CustomAppBar.dart';
import 'package:fluix/Components/DrawerPainter.dart';
import 'package:fluix/Utils/Theme.dart';
import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  static final String id = "Drawer1";
  static final String path = "lib/Lists/Drawer1.dart";

  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {

  Offset _offset = Offset(0,0);
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    double drawerwidth = MediaQuery.of(context).size.width*0.65;
    double drawerheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(),
          preferredSize: Size.fromHeight(56),
        ),
        body: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(milliseconds: 1500),
              left: isMenuOpen ? 0 : -drawerwidth + 20,
              top: 0,
              curve: Curves.elasticOut,
              child: SizedBox(
                width: drawerwidth,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    if(details.localPosition.dx <= drawerwidth) {
                      setState(() {_offset = details.localPosition;});
                    }
                    if(details.localPosition.dx > drawerwidth-20 && details.delta.distanceSquared > 2) {
                      setState(() {isMenuOpen = true;});
                    }
                    if(details.localPosition.dx < drawerwidth-20) {
                      setState(() {isMenuOpen = false;});
                    }
                  },
                  onPanEnd: (details) {
                    setState(() {_offset = Offset(0,0);});
                  },
                  child: Stack(
                    children: <Widget>[
                      CustomPaint(
                        size: Size(drawerwidth, drawerheight),
                        painter: DrawerPainter(offset: _offset),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            Container(
                              height: 90,
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 40,
                                child: Image.asset("images/logo.png", height: 60, width: 60,),
                                backgroundColor: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text("FLUIX", style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 30.0),
                            _buildRow(Icons.person, "Profile", (){}),
                            _buildDivider(),
                            _buildRow(Icons.settings, "Settings", (){}),
                            _buildDivider(),
                            _buildRow(Icons.notifications, "Notifications", (){}),
                            _buildDivider(),
                            _buildRow(Icons.phone, "Contact us", (){}),
                            _buildDivider(),
                            _buildRow(Icons.info, "About", (){}),
                            _buildDivider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                IconButton(
                                  enableFeedback: true,
                                  icon: Icon(Icons.arrow_back, color: enableDarkMode ? Colors.teal[200] : Colors.blue[200], size: 30,),
                                  onPressed: (){isMenuOpen = false;},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Divider _buildDivider() {
  return Divider(color: enableDarkMode ? Colors.teal[200] : Colors.blue[200],);
}

Widget _buildRow(IconData icon, String title, Function onTap) {
  return FlatButton(
    onPressed: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Icon(icon, color: enableDarkMode ? Colors.teal[200] : Colors.blue[200],),
        SizedBox(width: 10.0),
        Text(title, style: TextStyle(color: enableDarkMode ? Colors.teal[200] : Colors.blue[200], fontSize: 16.0),),
      ]),
    ),
  );
}