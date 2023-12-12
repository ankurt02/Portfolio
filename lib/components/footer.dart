// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfoilo_1/utils/socialrow.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
   Footer({super.key});
   
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.white,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        top: 20,
      ),
      height: 50,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white,
        //     blurStyle: BlurStyle.outer,
        //     blurRadius: 4,
        //   )
        // ]    not visible
      ),
      child: Center(
        child: Text(
          "Developed with \u{1F499} Flutter",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
