import 'package:bansal_jewels/widgets/banner.dart';
import 'package:bansal_jewels/widgets/first_strip.dart';
import 'package:bansal_jewels/widgets/gold_widget.dart';
import 'package:bansal_jewels/widgets/grid.dart';
import 'package:bansal_jewels/widgets/metal_widget.dart';
import 'package:bansal_jewels/widgets/silver_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Drawer
      drawer: const Drawer(),

      //AppBAr
      appBar: AppBar(
        backgroundColor: const Color(0xFF7D0C11),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'BANSAL & SONS JEWELLERS PVT.LTD',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11),
        ),
      ),

      //Body
      body: const Column(
        children: [
          SizedBox(height: 15),
          BannerWidget(),
          SizedBox(height: 15),
          First(),
          SizedBox(
            height: 10,
          ),
          Metal(),
          SizedBox(
            height: 10,
          ),
          Gold(),
          SizedBox(
            height: 10,
          ),
          Silver(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Grid(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: const Color(0xFF7D0C11),
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.whatsapp), label: 'Whatsapp'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Me'),
        ],
      ),
    );
  }
}
