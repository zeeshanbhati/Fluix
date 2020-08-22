import 'package:fluix/Navigation/demoScreen/DemoScreen1.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen2.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen3.dart';
import "package:flutter/material.dart";
import "package:foldable_sidebar/foldable_sidebar.dart";

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN


class FoldableDrawer extends StatefulWidget {


  static final String path = "lib/Drawers/FoldableDrawer.dart";
  @override
  _FoldableDrawerState createState() => _FoldableDrawerState();
}

class _FoldableDrawerState extends State<FoldableDrawer> {
  FSBStatus status;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:FoldableSidebarBuilder(
        drawerBackgroundColor: Colors.deepOrange,
        status: status,
        drawer: CustomDrawer(
          closeDrawer: (){
            setState(() {
              status = FSBStatus.FSB_CLOSE;
            });

          },
        ),
        screenContents: DemoScreen1(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          setState(() {
            status = status == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
          });
        },
      ),

    );
  }



}

class CustomDrawer extends StatelessWidget {
  final Function closeDrawer;

  const CustomDrawer({Key key,this.closeDrawer}) :  super(key:key);

  @override
  Widget build(BuildContext context) {
   Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width*0.6,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // Image.asset()
                SizedBox(height: 10,),
                Text("Fluix Developers"),

              ],
            ),
          ),

          ListTile(
            onTap: (){


              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DemoScreen2()));
              closeDrawer();

            },
            leading: Icon(Icons.person),
            title: Text('DemoScreen 2'),

          ),

          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DemoScreen3()));
              closeDrawer();

            },
            leading: Icon(Icons.person),
            title: Text('Screen 1'),

          ),



          Divider(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
