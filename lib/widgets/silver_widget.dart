import 'package:flutter/material.dart';

class Silver extends StatelessWidget {
  const Silver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: const Color(0xFFA24A4A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _text('Silver'),
          _text('70.0'),
          _text('65.0'),
          _text('60.0'),
          _text('50.0'),
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
