import 'package:bansal_jewels/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Jewellers());
}

class Jewellers extends StatelessWidget {
  const Jewellers({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        primaryColor: const Color(0xFF7D0C11),
        scaffoldBackgroundColor: Colors.white,),
        
      home:const HomeScreen(),
    );
  }
}