import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfoilo_1/utils/socialrow.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        top: 20,
      ),
      // height: 120,
      child: Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 4.0,
          ),
          // Text(
          //   "Ankur Tiwary",

          // ),
        ],
      ),
    );
  }
}
