import 'package:flutter/material.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/shared/section.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageTitle(title: "الإعدادات"),
          // Page Nav
          SectionNav(),

          // TODO: Settings
          SectionRoundedTop(),
          // Page Content
          SectionRoundedBottom(),
        ],
      ),
    );
  }
}
