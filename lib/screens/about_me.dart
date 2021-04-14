import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:flutter_portfolio/Shared/strings.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/big_button.dart';
import '../components/padding_text.dart';
import '../components/sliver_bar.dart';
import '../resources/constants.dart';
import 'cert-viewer.dart';
import 'skills.dart';

class AboutMe extends StatelessWidget {
  // url_launcher function for github link.
  void launchGitHub() async {
    if (await canLaunch(kGitHubUrl)) {
      await launch(kGitHubUrl);
    } else {
      throw 'Could not launch $kGitHubUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.baseColorPrimary,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverBar(titleText: 'Haqqımda'),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                PaddingText(
                  padding: EdgeInsets.all(20.0),
                  text: kAboutMeDescription,
                  size: 20.0,
                  family: 'Raleway',
                  color: Colors.white,
                ),
                BigButton(
                  title: MyStrings.skills,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Skills()));
                  },
                ),
                BigButton(
                  title: MyStrings.github,
                  onPress: launchGitHub,
                ),
                BigButton(
                  title: 'CV',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CertViewer(
                          file: kResume,
                          text: 'CV',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
