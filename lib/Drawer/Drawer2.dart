import 'package:fluix/Navigation/demoScreen/DemoScreen1.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen2.dart';
import 'package:fluix/Navigation/demoScreen/DemoScreen3.dart';
import "package:flutter/material.dart";
import "package:foldable_sidebar/foldable_sidebar.dart";

class Drawer2 extends StatefulWidget {


  static final String id = "Drawer2";
  @override
  _Drawer2State createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
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
              Navigator.pushNamed(context, DemoScreen1.id);
              closeDrawer();
              return 1;
            },
            leading: Icon(Icons.person),
            title: Text('Your Profile'),

          ),

          ListTile(
            onTap: (){
              Navigator.pushNamed(context, DemoScreen1.id);
              closeDrawer();
              return 2;
            },
            leading: Icon(Icons.person),
            title: Text('Screen 1'),

          ),


          ListTile(
            onTap: (){
              Navigator.pushNamed(context, DemoScreen2.id);
              closeDrawer();
              return 3;
            },
            leading: Icon(Icons.person),
            title: Text('screen 2'),

          ),

          ListTile(
            onTap: (){
              Navigator.pushNamed(context, DemoScreen3.id);
              closeDrawer();
            },
            leading: Icon(Icons.person),
            title: Text("Screen 3"),
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
