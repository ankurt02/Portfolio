// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portfoilo_1/utils/animate_contact.dart';
import 'package:portfoilo_1/utils/animated_certficate.dart';
import 'package:url_launcher/url_launcher.dart';

class Certifications extends StatefulWidget {
  const Certifications({super.key});

  @override
  State<Certifications> createState() => _CertificationsState();
}

class _CertificationsState extends State<Certifications> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(20),
      width: screenWidth < 900 
            ? screenWidth * 0.9  
            : screenWidth < 1600
              ? screenWidth * 0.5
              : screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(10),
      height: 310,
      child: Container(
        // clipBehavior: Clip.antiAlias,
        // width: double.infinity,
        child: Column(
          children: [
            Text(
              "Certifications",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              thickness: 1.5,
              indent: 8,
              endIndent: 8,
            ),
            const SizedBox(
              height: 8,
            ),
      
            AnimatedCertificate(
              iconData: Icons.workspace_premium , 
              title: "Microsoft Azure AI Fundamentals", 
              subtitle: "AI-900 Exam", 
              onTap: _MSAI900,
            ),
            AnimatedCertificate(
              // iconData: Icons.workspace_premium , 
              iconData: Icons.workspace_premium,
              title: "OCI Foundation Associates", 
              subtitle: "Oracle Cloud Infrastructure 2023 Certified Foundations Associate", 
              onTap: _OCIfa
            ),
          ],
        ),
      ),
    );
  }
}

void _MSAI900() async {
  const String url = 'https://drive.google.com/file/d/1EZUUyPu4xZ0f3Y4XTGFkw3I0gb1gj1qt/view?usp=drive_link';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
void _OCIfa() async {
  const String url = 'https://drive.google.com/file/d/18hHArJWIWIrUiell8VknaC9BqEo1uaye/view?usp=drive_link';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}