import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';

class ContactCard extends StatelessWidget {
  final Function onTap;
  final String titleText;
  final IconData icon;

  ContactCard({
    @required this.onTap,
    @required this.titleText,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          onTap: onTap,
          leading: Icon(
            icon,
            color: MyColors.baseColorPrimary,
          ),
          title: Text(
            titleText,
            style: TextStyle(
              color: MyColors.baseColorPrimary,
              fontFamily: 'Jura',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
