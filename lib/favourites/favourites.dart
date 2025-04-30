import 'package:flutter/material.dart';
import 'package:verses/home/main_list_Item.dart';
import 'package:verses/services/json.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/shared/section.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageTitle(title: "المفظلة"),
          // Page Nav
          SectionNav(),

          // TODO: Favourites
          // TODO: sura
          SectionTitle(label: "ســور"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          SectionRoundedBottom(),

          // TODO: hizb
          SectionTitle(label: "أحـزاب"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Hizb),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Hizb),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Hizb),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Hizb),
          SectionRoundedBottom(),
        ],
      ),
    );
  }
}
