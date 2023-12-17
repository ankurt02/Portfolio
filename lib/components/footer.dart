// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilo_1/utils/socialrow.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {
   Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      // color: Colors.white,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        top: 20,
      ),
      height: 50,
      width: screenWidth,
      // decoration: BoxDecoration(
        
        // color: Colors.black87,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(16),
        //   topRight: Radius.circular(16),
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white,
        //     blurStyle: BlurStyle.outer,
        //     blurRadius: 4,
        //   )
        // ]    not visible
      // ),
      child: Center(
        child: Row(
          // children: Text(
          //   // // "Developed with 💙 Flutter",
          //   // "Developed with \u{1F499} Flutter",
          //   // style: GoogleFonts.roboto(
          //   //   fontSize: 18,
          //   //   fontWeight: FontWeight.w400,
          //   //   color: Colors.white,
          //   // ),
           
          // ),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Developed with Flutter 💙",
              style: GoogleFonts.nunito(
                fontSize: 18,
                color: Colors.white70,
                
              ),
            ),
            // Icon(Icons.blue)
          ],
        ),
      ),
    );
  }
}
