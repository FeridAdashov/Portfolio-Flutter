import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';

class SliverBar extends StatelessWidget {
  final String titleText;

  SliverBar({@required this.titleText});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 150.0,
      pinned: true,
      backgroundColor: MyColors.baseColorPrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.clamp,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              MyColors.baseColorPrimary,
              MyColors.baseColorSecondary,
            ],
          ),
        )),
        title: Text(
          titleText,
          style: TextStyle(
            color: MyColors.white,
            fontWeight: FontWeight.w100,
            fontFamily: 'Raleway',
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}
