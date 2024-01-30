import 'package:flutter/material.dart';
import 'package:flutter_quranapp/global.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      backgroundColor: Colors.white,
      body: Text('Home Screen'),
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
    items: [
      _bottomNavigationBarItem(icon: '/svg/quran.svg', label: 'Quran'),
      _bottomNavigationBarItem(icon: '/svg/lightbulb.svg', label: 'Lightbulb'),
      _bottomNavigationBarItem(icon: '/svg/prayer.svg', label: 'Prayer'),
      _bottomNavigationBarItem(icon: '/svg/doa.svg', label: 'Doa'),
      _bottomNavigationBarItem(icon: '/svg/bookmark.svg', label: 'Bookmark'),
    ],
  );

  BottomNavigationBarItem _bottomNavigationBarItem({required String icon, required String label}) =>
  BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        color: secondary,
      ),
    activeIcon: SvgPicture.asset(
      icon,
      color: primary,
    ),
    label: label
  );

  AppBar _appBar() => AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        IconButton(
            onPressed: (() => {}),
            icon: SvgPicture.asset('/svg/menu.svg')
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          'Quran App',
          style: GoogleFonts.poppins(
            color: primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: (() => {}),
            icon: SvgPicture.asset('/svg/search.svg'))
      ],
    ),
  );
}
