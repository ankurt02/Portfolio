// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimatedCertificate extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedCertificate({
    Key? key,
    // super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedCertificate> createState() => _AnimatedCertificateState();
}

class _AnimatedCertificateState extends State<AnimatedCertificate> {
  bool isHoverring = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
            Expanded(

              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      // overflow: TextOverflow.clip,
                      overflow: TextOverflow.fade
                    ),
                  ),
                  // SizedBox(height: -1,),
                  Text(
                    widget.subtitle,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      // overflow: TextOverflow.clip,
                      overflow: TextOverflow.fade,
                      color: Colors.black54
                    ),
            
                    // style: TextStyle(
                    //     ),
                  )
                ],
              ),
            ),
            if (screenWidth > 900 ) 
              Spacer(),
            if (screenWidth > 900 ) 
              Icon(
              // remove this for the mobile view
              Icons.open_in_new_rounded,
              ),
          ],
        ),
      ),
    );
  }
}
