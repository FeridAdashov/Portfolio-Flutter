import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/contact_card.dart';
import '../components/padding_text.dart';
import '../resources/constants.dart';

class Home extends StatelessWidget {
  // url_launcher function for phone and email.
  void launchURL(url) async {
    String uri = Uri.encodeFull(url);
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.baseColorPrimary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 80.0),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(kMe),
                radius: 70,
                backgroundColor: MyColors.baseColorSecondary,
              ),
              PaddingText(
                padding: EdgeInsets.all(16.0),
                text: 'Fərid Adaşov',
                size: 45.0,
                family: 'Raleway',
                color: MyColors.baseColorSecondary,
                weight: FontWeight.w100,
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 4.0),
                text: kMainDescription,
                size: 18.0,
                family: 'Jura',
                color: MyColors.baseColorSecondary,
              ),
              PaddingText(
                padding: EdgeInsets.only(bottom: 16.0),
                text: kSecondaryDescription,
                size: 18.0,
                family: 'Jura',
                color: MyColors.baseColorSecondary,
              ),
              SizedBox(
                height: 100.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xFFb2ebf9),
                ),
              ),
              ContactCard(
                onTap: () => launchURL(kPhoneNumberURL),
                titleText: kPhoneNumberText,
                icon: Icons.chat,
              ),
              ContactCard(
                onTap: () => launchURL(kEmailAddressURL),
                titleText: kEmailAddress,
                icon: Icons.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
