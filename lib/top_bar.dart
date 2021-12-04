import 'package:flutter/material.dart';
import 'theme/colors.dart';
import 'dart:math'as math;

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool start = false ;
  @override
  Widget build(BuildContext context) {
    if(start==false){Future.delayed(const Duration(seconds: 3),(){setState(() {start=true;});});}else
    if(start==true){Future.delayed(const Duration(seconds: 3),(){setState(() {start=false;});});}

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPaint(
            child: AnimatedContainer(
              height: start==false? 0: MediaQuery.of(context).size.height*0.4,
              duration: const Duration(seconds: 3),
            ),
            painter: CurvePainterTop(),
          ),
          Transform.rotate(
            angle: math.pi / 0.9999,
            child: CustomPaint(
              child: AnimatedContainer(
                height: start==false? 0: MediaQuery.of(context).size.height*0.4,
                duration: const Duration(seconds: 3),
              ),
              painter: CurvePainterBottom(),
            ),
          ),

        ],
      ),
    );
  }
}

class CurvePainterTop extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path.lineTo(0, size.height *0.75);
    path.quadraticBezierTo(size.width* 0.10, size.height*0.70, size.width*0.17, size.height*0.90);
    path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
    path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
    path.quadraticBezierTo(size.width*0.60, size.height*0.85, size.width*0.65, size.height*0.65);
    path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);
    path.close();

    paint.color = Color.fromRGBO(255, 228, 132, 1);
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height*0.50);
    path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
    path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
    path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
    path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
    path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Color.fromRGBO(255, 204, 51, 1);
    canvas.drawPath(path, paint);

    path =Path();
    path.lineTo(0, size.height*0.95);
    path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
    path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
    path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
    path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Color.fromRGBO(252, 150, 1, 1);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}

class CurvePainterBottom extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path.lineTo(0, size.height *0.75);
    path.quadraticBezierTo(size.width* 0.10, size.height*0.70, size.width*0.17, size.height*0.90);
    path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
    path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
    path.quadraticBezierTo(size.width*0.60, size.height*0.85, size.width*0.65, size.height*0.65);
    path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);
    path.close();

    paint.color = Colors.brown[100];
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height*0.50);
    path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
    path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
    path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
    path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
    path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color =  Colors.brown[300];
    canvas.drawPath(path, paint);

    path =Path();
    path.lineTo(0, size.height*0.95);
    path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
    path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
    path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
    path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color =  Colors.brown;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}




