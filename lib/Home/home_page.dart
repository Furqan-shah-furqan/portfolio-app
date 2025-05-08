import 'package:flutter/material.dart';
import 'package:porfolioapp/consts.dart';
import '../Components/header.dart';
import '../Components/project_card.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 20),
            Text(
              'Projects',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children:
                  projects
                      .map(
                        (project) => ProjectCard(
                          title: project['title']!,
                          description: project['description']!,
                          imagePath: project['image']!,
                          link: project['link']!,
                        ),
                      )
                      .toList(),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'images/whatsapp.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
                Text(
                  '  Whatsapp: 0302-2639498',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'images/gmail.png',
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
                Text(
                  '  GMAIL: furqanfff6@gmail.com',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
