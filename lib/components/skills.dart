// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  final List<String> progLang = ["Python", "Java","Dart"];
  final List<String> frameworks = ["Flutter"];
  final List<String> otherSkills = ["Cloud", "MySQL"];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20.0,
      runAlignment: WrapAlignment.center,
      runSpacing: 20.0,
      children: [
        Container(
          // color: Colors.wonhite,
          padding: EdgeInsets.only(
            top: 40,
            // bottom: 5,
          ),
          alignment: Alignment.center,
          child: const Text(
            "My Skills",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
        ),
        ..._buildSkillCategory(progLang, "Programming Languages", screenWidth),
        ..._buildSkillCategory(frameworks, "Frameworks", screenWidth),
        ..._buildSkillCategory(otherSkills, "Other Skills", screenWidth),
      ],
    );
  }

  List<Widget> _buildSkillCategory(
      List<String> skills, String category, double screenWidth) {
    return [
      Container(
        padding: EdgeInsets.all(12.0),
        width: screenWidth < 900 ? screenWidth * 0.9 : (screenWidth * 0.8) / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 1.5,
            ),
            Row(
              children: [
                ...skills.map((skills) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Chip(
                    backgroundColor: Colors.white,
                    label: Text(
                      skills,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    side: BorderSide(
                      color: Colors.black54,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ))
              ],
            )
          ],
        ),
      )
    ];
  }
}

//         Container(
//           padding: EdgeInsets.all(12.0),
//           width:
//               screenWidth < 900 ? screenWidth * 0.9 : (screenWidth * 0.8) / 3,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(12)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Programming Languages",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey.shade400,
//                 thickness: 1.5,
//                 // indent: 2,
//                 // endIndent: 2,
//               ),
//               Chip(
//                 backgroundColor: Colors.white,
//                 label: Text(
//                   "Python",
//                 ),
//                 labelStyle: TextStyle(
//                   color: Colors.black87,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                 ),
//                 side: BorderSide(
//                   color: Colors.black54,
//                 ),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//               )
//             ],
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(12.0),
//           width:
//               screenWidth < 900 ? screenWidth * 0.9 : (screenWidth * 0.8) / 3,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(12)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Frameworks",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey.shade400,
//                 thickness: 1.5,
//                 // indent: 12,
//                 // endIndent: 12,
//               ),
//               Chip(
//                 backgroundColor: Colors.white,
//                 label: Text(
//                   "Flutter",
//                 ),
//                 labelStyle: TextStyle(
//                   color: Colors.black87,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                 ),
//                 side: BorderSide(
//                   color: Colors.black54,
//                 ),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//               )
//             ],
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(12.0),
//           width:
//               screenWidth < 900 ? screenWidth * 0.9 : (screenWidth * 0.8) / 3,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(12)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 "Others",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               Divider(
//                 color: Colors.grey.shade400,
//                 thickness: 1.5,
//                 // indent: 12,
//                 // endIndent: 12,
//               ),
//               Chip(
//                 backgroundColor: Colors.white,
//                 label: Text(
//                   "Cloud",
//                 ),
//                 labelStyle: TextStyle(
//                   color: Colors.black87,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16,
//                 ),
//                 side: BorderSide(
//                   color: Colors.black54,
//                 ),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
