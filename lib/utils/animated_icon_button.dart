// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final String title;
  const AnimatedIconButton({
    Key? key,
    // super.key,
    required this.iconData,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButton> {
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
            borderRadius: BorderRadius.circular(10.0),
            color: isHoverring ? Colors.grey.shade300 : Colors.white,
            border: Border.all(
                color: isHoverring ? Colors.grey.shade300 : Colors.white,
                style: BorderStyle.none)),
        margin: EdgeInsets.only(
          top: 4.0,
        ),
        // padding: EdgeInsets.all(2.0),
        child: Column(
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
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),                  
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
