import 'package:flutter/material.dart';

class Metal extends StatelessWidget {
  const Metal({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: double.infinity,
      color: const Color(0xFF7D0C11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment. spaceBetween,
        children: [
          _text("Metal's"),
          _text('24k'),
          _text('22k'),
          _text('18k'),
          _text('14k'),
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
