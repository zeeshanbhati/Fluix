import 'package:flutter/material.dart';

class ListWheelScrollViewApp extends StatefulWidget {
  @override
  _ListWheelScrollViewAppState createState() {
    return _ListWheelScrollViewAppState();
  }
}

class _ListWheelScrollViewAppState extends State<ListWheelScrollViewApp> {

 

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        appBar: AppBar(
          title: Text('Course Categories'),
        ),
        body: Center(
            child: ListWheelScrollView(
              itemExtent: 250,         // used to set the size of each item in the main axis.
             
              // magnification: 1.5,   //. To set the zoom-in rate, use magnification property which defaults to 1.0.
              //                         // If the value is greater than 1.0, it will look bigger.
              useMagnifier: true,
              physics: FixedExtentScrollPhysics(),
              diameterRatio: 4.0,   //The diameter of the cylinder can be set using diameterRatio property value.
              squeeze: 2.0,
              perspective: 0.01,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Digital\nMarketing',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.green,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'IT\nSoftware',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Finance and\nAccounting',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Photography',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.pink,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Web Development',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.brown,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'App Development',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.cyan,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Machine Learning',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.purple,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Deep Learning',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Digital\nMarketing',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.green,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'IT\nSoftware',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Finance and/nAccounting',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    color:Colors.yellow,
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  ),
               child: Center(
                 child: Text(
                   'Photography',
                   style: TextStyle(fontSize:45,color:Colors.black),
                   
                 ),
               ),
                ),
              ],
             
            )
        )
    );
  }
}