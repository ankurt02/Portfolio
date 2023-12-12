// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedContact({
    Key ? key,
    // super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHoverring = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap();
        }
      },
      onHover: (val) {
        setState(() {
          isHoverring = val;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: isHoverring ? Colors.grey.shade300 : Colors.white,
            border: Border.all(
                color: isHoverring ? Colors.grey.shade300 : Colors.white,
                style: BorderStyle.none)),
        margin: EdgeInsets.only(
          top: 4.0,
        ),
        // padding: EdgeInsets.all(2.0),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(
                  widget.iconData,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // SizedBox(height: -1,),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                    // fontStyle: FontStyle.italic,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
