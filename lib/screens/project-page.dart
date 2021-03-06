import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Shared/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/big_button.dart';
import '../resources/projects_list.dart';

class Project extends StatelessWidget {
  final int index;

  Project({@required this.index});

  void launchURL(url) async {
    if (url == '') return;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> _images = projects[index]['image_urls'];

    List<Padding> _paddingWidgets = _images.map((image) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(image)),
      );
    }).toList();

    return Scaffold(
      backgroundColor: MyColors.baseColorPrimary,
      appBar: AppBar(
        backgroundColor: MyColors.baseColorPrimary,
        title: Text(
          projects[index]['project_name'],
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Raleway',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                projects[index]['description'],
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                ),
              ),
            ),
            BigButton(
              title: 'Google Play',
              onPress: () {
                launchURL(projects[index]['live_link']);
              },
            ),
            BigButton(
              title: 'GitHub',
              onPress: () {
                launchURL(projects[index]['github_link']);
              },
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Column(
              children: _paddingWidgets,
            ),
          ],
        ),
      ),
    );
  }
}
