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
      padding: EdgeInsets.all(10),
      height: 450,

      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // clipBehavior: Clip.antiAlias,
        // shrinkWrap: true,
        children: [
          Center(
            
            child: Text(
              "Education",
              style: TextStyle(
                fontSize: 26, 
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
            indent: 8,
            endIndent: 8,
            // color:
            // Colors.grey.shade300,
          ),

          const SizedBox(
            height: 12.0,
          ),
          // timeline begins here
          Timeline.tileBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            builder: TimelineTileBuilder.fromStyle(
                itemCount: 3,
                contentsAlign: ContentsAlign.alternating,
                contentsBuilder: (context, index) {
                  return SizedBox(
                    
                    width: double.infinity,
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('assets/background2.png'),
                            // opacity: 0.75,
                            fit: BoxFit.cover,
                          ), 
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                        
                                        
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 
                                      index == 0 
                                        ? "10th Boards/AISSE\n"
                                        : index == 1 
                                          ? "12th Boards/AISSCE\n" 
                                          : "BE in Computer Science and Engineering\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: SizedBox(
                                        height: 32,
                                      )
                                    ),
                                    TextSpan(
                                      text: "Year of passing : ",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white70,
                                      )
                                    ),
                                    TextSpan(
                                      text:  
                                      index == 0 
                                        ? "2018\n"
                                        : index == 1 
                                          ? "2020\n" 
                                          : "2025\n",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white70,
                                      )
                                    ),
                                    // WidgetSpan(child: SizedBox(height: 20,)),
                                    TextSpan(
                                      text: index == 0 
                                        ? "CBSE\n"
                                        : index == 1 
                                          ? "CBSE\n" 
                                          : "Nitte Meenakshi Insitute of Technology\n",
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Colors.white70,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ),
                                    TextSpan(
                                      text: index == 0 
                                        ? "Percentage : "
                                        : index == 1 
                                          ? "Percentage : " 
                                          : "CGPA : ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white70,
                                      )
                                    ),
                                    TextSpan(
                                      text: index == 0 
                                        ? "89.4"
                                        : index == 1 
                                          ? "79.8" 
                                          : "7.92",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w500,
                                        )

                                    )
                                  ]
                                ),
                              ),
                                        
                                        
                                        
                              
                            ],
                          ),
                        ),
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
