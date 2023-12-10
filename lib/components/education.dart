// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: screenWidth < 900 
            ? screenWidth * 0.9  
            : screenWidth < 1600
              ? screenWidth * 0.5
              : screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(20.0),
      height: 800,

      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        clipBehavior: Clip.antiAlias,
        shrinkWrap: true,
        children: [
          Text(
            "Education",
            style: TextStyle(
              fontSize: 26, 
              fontWeight: FontWeight.w500
            ),
          ),

          const SizedBox(
            height: 12.0,
          ),
          // timeline begins here
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
                itemCount: 4,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "10th Boards/AISSCE\n",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87
                                  ),
                                ),
                                TextSpan(
                                  text: "Year of passing : ",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  )
                                ),
                                TextSpan(
                                  text: "2018",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  )
                                ),
                                // WidgetSpan(child: SizedBox(height: 20,)),
                                TextSpan(
                                  text: "\nLorem aliquyam invidunt magna sea sadipscing justo accusam ut labore justo. Est ipsum kasd sit tempor accusam no, dolores dolores.",
                                  style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey.shade700,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  )
                                ),
                              ]
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
