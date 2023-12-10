import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilo_1/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        canvasColor: Color.fromARGB(211, 3, 3, 3),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade400),
        useMaterial3: true,
        // textTheme: GoogleFonts.poppinsTextTheme(Typography.blackCupertino)
      ),
      home: const Portfolio(),
    );
  }
}
