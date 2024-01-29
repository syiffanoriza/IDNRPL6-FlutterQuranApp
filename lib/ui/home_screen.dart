import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Colors.white,
      body: Text('Home Screen'),
    );
  }

  AppBar _appBar() => AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: [
        IconButton(
            onPressed: (() => {}),
            icon: SvgPicture.asset('/svg/menu_icon.svg')
        ),
      ],
    ),
  );
}
