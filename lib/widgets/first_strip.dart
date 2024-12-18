import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      color: const Color(0xFF7D0C11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _place(),
          _place(),
          _place(),
          _place(),
          _place(),
        
        ],
      ),
    );
  }
}

Widget _place() {
  return Placeholder(fallbackHeight: 55,fallbackWidth: 30,);
}
