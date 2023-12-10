// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const AnimatedIconButton({
    Key ? key,
    // super.key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButton> {
  bool isHoverring = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
          ],
        ),
      ),
    );
  }
}
