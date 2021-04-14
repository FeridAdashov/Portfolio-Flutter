import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';

class CertViewer extends StatelessWidget {
  final String file;
  final String text;

  CertViewer({@required this.file, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.baseColorPrimary,
      appBar: AppBar(
        backgroundColor: MyColors.baseColorPrimary,
        title: Text(
          text,
          style: TextStyle(
            fontFamily: 'Raleway',
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Image.asset(file),
      ),
    );
  }
}
