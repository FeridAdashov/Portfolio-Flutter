import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:flutter_portfolio/Shared/strings.dart';
import 'package:flutter_portfolio/components/sliver_bar.dart';
import 'package:flutter_portfolio/resources/skills_list.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.baseColorPrimary,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverBar(titleText: MyStrings.skills),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(skills[index]['logo']),
                      Text(
                        skills[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ],
                  );
                },
                childCount: skills.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
