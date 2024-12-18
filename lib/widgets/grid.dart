import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: .7,
      
      children: [
        _gridItem('images/1.png', 'Gold'),
        _gridItem('images/2.png', 'Diamond'),
        _gridItem('images/3.png', 'Antique'),
        _gridItem('images/4.png', 'Polki'),
        _gridItem('images/5.png', 'Baby'),
        _gridItem('images/6.png', 'Gold Coin'),
        _gridItem('images/7.png', 'GEMSTONE'),
        _gridItem('images/8.png', 'LOOSE DIAMONDS'),
        _gridItem('images/9.png', 'Jadau'),
      ],
    );
  }
}

Widget _gridItem(String imagepath, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height:139,
        width: 120,
        padding: EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 233),
            border: Border.symmetric(
              horizontal: BorderSide(width: 2, color: Colors.yellow),
            )),
        child: Image.asset(imagepath),
      ),
      const SizedBox(height: 8),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      )
    ],
  );
}
