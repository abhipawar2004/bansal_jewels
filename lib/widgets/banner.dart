import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      color: const Color(0xFF0F4C27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _name('ANTIQUE'),
              _name('JEWELLERY'),
              _name('COLLECTIONS'),
              const SizedBox(height: 20),
              Container(
                height: 25,
                width: 90,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 77, 125, 144),
                    borderRadius: BorderRadius.circular(22)),
                child: const Center(
                  child: Text(
                    'Explore Now',
                    style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white30,
            height: 210,
            width: 260,
            child: FittedBox(child: Image.asset('images/bannner.jpg'))
          ),
        ],
      ),
    );
  }
}

Widget _name(String name) {
  return Text(
    name,
    style: GoogleFonts.playfairDisplay(
        fontWeight: FontWeight.bold, color: Colors.white),
  );
}


