import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/BottomNavBar/custom_nav_bar.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:flutter_portfolio/Shared/strings.dart';

ClipRRect buildBottomSection(Color firstColor, Color secondColor,
    int _selectedIndex, Function tapNavBar) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15.0),
      topRight: Radius.circular(15.0),
    ),
    child: CustomNavigationBar(
      backgroundColor: firstColor,
      // initialIndex: 1,
      items: <Widget>[
        Column(
          children: [
            Icon(Icons.home,
                size: 30,
                color: _selectedIndex == 0 ? MyColors.accent : secondColor),
            _selectedIndex != 0
                ? Text(MyStrings.home, style: TextStyle(color: secondColor))
                : SizedBox(height: 0)
          ],
        ),
        Column(
          children: [
            Icon(Icons.face,
                size: 30,
                color: _selectedIndex == 1 ? MyColors.accent : secondColor),
            _selectedIndex != 1
                ? Text(MyStrings.about_me, style: TextStyle(color: secondColor))
                : Container(
                    height: 0,
                    width: 0,
                  )
          ],
        ),
        Column(
          children: [
            Icon(Icons.code,
                size: 30,
                color: _selectedIndex == 2 ? MyColors.accent : secondColor),
            _selectedIndex != 2
                ? Text(MyStrings.projects, style: TextStyle(color: secondColor))
                : Container(height: 0, width: 0)
          ],
        ),
      ],
      onTap: (index) => tapNavBar(index),
    ),
  );
}
