import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';

class BigButton extends StatelessWidget {
  final String title;
  final Function onPress;

  BigButton({@required this.title, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Material(
        elevation: 5.0,
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 340.0,
          height: 65.0,
          child: Text(
            title,
            style: TextStyle(
              color: MyColors.baseColorPrimary,
              fontSize: 32.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
