import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/bottom_modal_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.white;

  _changeBackgroundColor(double red, double green, double blue) {
    setState(() {
      color = Color.fromARGB(0xFF, red.toInt(), green.toInt(), blue.toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          color = Color(Random().nextInt(0xFFFFFFFF)).withAlpha(0xFF);
        });
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: color,
        child: Stack(children: [
          Center(
            child: Text('Hey there',
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_up, size: 52,),
              onPressed: () => _showSlideupView(context),
            ),
          )
        ]),
      ),
    );
  }

  _showSlideupView(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: BottomModalView(_changeBackgroundColor),
            behavior: HitTestBehavior.opaque,
          );
        });
  }
}
