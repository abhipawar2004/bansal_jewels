import 'package:flutter/material.dart';

class Gold extends StatelessWidget {
  const Gold({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: double.infinity,
      color: const Color(0xFFA24A4A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _text('Gold'),
          _text('5900.0'),
          _text('5400.0'),
          _text('4300.0'),
          _text('3600.0'),
        ],
      ),
    );
  }
}

Widget _text(String data) {
  return Text(
    data,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
  );
}
