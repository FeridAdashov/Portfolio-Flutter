import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:flutter_portfolio/screens/about_me.dart';
import 'package:flutter_portfolio/screens/projects.dart';

import 'Shared/BottomNavBar/build_nav_bar.dart';
import 'screens/home.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PortfolioState();
  }
}

class PortfolioState extends State<Portfolio> {
  int selectedIndex = 0;
  final _pageOptions = [
    Home(),
    AboutMe(),
    Projects(),
  ];

  @override
  Widget build(BuildContext context) {
    void tapBottomNavBar(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FA - Portfolio',
      // theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: MyColors.baseColorPrimary,
        body: _pageOptions[selectedIndex],
        bottomNavigationBar: buildBottomSection(
          MyColors.baseColorPrimary,
          MyColors.baseColorPrimary,
          selectedIndex,
          tapBottomNavBar,
        ),
      ),
    );
  }
}
