import 'package:flutter/material.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/shared/section.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageTitle(title: "حول"),
          // Page Nav
          SectionNav(),

          // TODO: Info
          SectionRoundedTop(),
          SectionRoundedBottom(),

        ],
      ),
    );
  }
}
