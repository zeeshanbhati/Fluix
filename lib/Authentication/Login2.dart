import 'package:fluix/Authentication/SignUp2.dart';
import 'package:flutter/material.dart';

//TODO: PLEASE MAKE SURE TO IMPORT ALL THE PACKAGES & FILES AS SHOWN ABOVE YOU CAN REPLACE THE DEMO SCREENS WITH YOUR SCREEN

class Login2 extends StatefulWidget {
  static final String id = "Login2";
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignin(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenSize.width/10),
          child: Column(
            children: [
              _getWelcomeText(screenSize),
              _getTextFields(screenSize),
              _signInbar(screenSize),
              _bottombar(context,screenSize)

            ],
          ),
        )
      ),
    );
  }

  _bottombar(BuildContext context,Size screenSize){
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Text("Sign up",style: TextStyle(fontSize: screenSize.height/55,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
            onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUp2())),

          ),
          Text("Forget Password",style: TextStyle(fontSize: screenSize.height/55,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),
        ],
      ),
    );
  }

  _signInbar(Size screenSize){
    return Expanded(
      flex:1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Sign in",style: TextStyle(fontSize: screenSize.height/30,fontWeight: FontWeight.w500),),
          GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              radius:40,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),

            ),
            //TODO Implement Sign in code;
            onTap: ()=>null,
          )
        ],
      ),
    );
  }

  _getWelcomeText(Size screenSize){
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Text("Welcome \n Back",style: TextStyle(color: Colors.white,fontSize: screenSize.height/21),),
      ),
    );
  }

  _getTextFields(Size screenSize){
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: screenSize.height/50,),

          TextField(decoration: InputDecoration(labelText: 'Email'),),

          SizedBox(height: screenSize.height/50,),

          TextField(decoration: InputDecoration(labelText: 'Password'),),

          SizedBox(height: screenSize.height/40,),
        ],
      ),
    );
  }


}

class BackgroundSignin extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh= size.height;
    var paint  = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0,0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);


    Path blueWave  = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh*0.5);
    blueWave.quadraticBezierTo(sw*0.5, sh*0.45, sw*0.2, 0);
    blueWave.close();
    paint.color = Colors.lightBlue.shade300;
    canvas.drawPath(blueWave, paint);

    Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, sh*0.1);
    greyWave.cubicTo(sw*0.95, sh*0.15, sw*0.65, sh*0.15, sw*0.6, sh*0.38);
    greyWave.cubicTo(sw*0.52, sh*0.52, sw*0.05, sh*0.45, 0, sh*0.4);
    greyWave.close();
    paint.color = Colors.grey.shade800;
    canvas.drawPath(greyWave, paint);


    Path yellowWave = Path();
    yellowWave.lineTo(sw*0.7, 0);
    yellowWave.cubicTo(sw*0.6, sh*0.05, sw*0.27, sh*0.01, sw*0.18, sh*0.12);
    yellowWave.quadraticBezierTo(sw*0.12, sh*0.2, 0, sh*0.2);
    yellowWave.close();
    paint.color = Colors.orange.shade300;
    canvas.drawPath(yellowWave, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
  return oldDelegate != this;
  }

}
