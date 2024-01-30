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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assalamualaikum',
              style: GoogleFonts.poppins(
                color: secondary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Username',
              style: GoogleFonts.poppins(
                color: primary,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Stack(

            )
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
    items: [
      _bottomNavigationBarItem(icon: '/svg/icons/quran.svg', label: 'Quran'),
      _bottomNavigationBarItem(icon: '/svg/icons/lightbulb.svg', label: 'Lightbulb'),
      _bottomNavigationBarItem(icon: '/svg/icons/prayer.svg', label: 'Prayer'),
      _bottomNavigationBarItem(icon: '/svg/icons/doa.svg', label: 'Doa'),
      _bottomNavigationBarItem(icon: '/svg/icons/bookmark.svg', label: 'Bookmark'),
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
            icon: SvgPicture.asset('/svg/icons/menu.svg')
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
            icon: SvgPicture.asset('/svg/icons/search.svg'))
      ],
    ),
  );
}
