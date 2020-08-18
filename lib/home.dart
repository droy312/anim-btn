import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double elevation = 10;
  double letterSpacingBegin = 1;
  double letterSpacingEnd = 1;

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTapDown: (d) {
            setState(() {
              elevation = 0;
              letterSpacingBegin = 1;
              letterSpacingEnd = 20;
              isPressed = true;
            });
          },
          onTapUp: (d) {
            setState(() {
              elevation = 10;
              letterSpacingBegin = 20;
              letterSpacingEnd = 1;
              isPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: MediaQuery.of(context).size.width - 200,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isPressed ? Colors.white : Color.fromRGBO(45, 45, 45, 1),
              boxShadow: [
                BoxShadow(
                  color: isPressed ? Colors.black12 : Colors.black26,
                  offset: Offset(0, 10),
                  blurRadius: 20,
                ),
              ],
            ),
            child: TweenAnimationBuilder(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 1000),
              tween: Tween<double>(begin: letterSpacingBegin, end: letterSpacingEnd),
              builder: (context, double letterSpacing, child) {
                return Text(
                  'SPACE',
                  style: TextStyle(
                    color: isPressed ? Color.fromRGBO(45, 45, 45, 1) : Colors.white,
                    fontSize: 18,
                    letterSpacing: letterSpacing,
                    fontWeight: FontWeight.w400,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
