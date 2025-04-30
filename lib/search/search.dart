import 'package:flutter/material.dart';
import 'package:verses/home/main_list_Item.dart';
import 'package:verses/services/json.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/shared/section.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          PageTitle(title: "بحث"),
          // Page Nav
          SectionNav(),

          // TODO: Search input
          SectionRoundedTop(),
          SectionRoundedBottom(),

          // TODO: Results sura
          SectionTitle(label: "ســور"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          SectionRoundedBottom(),

          // TODO: Results hizb
          SectionTitle(label: "أحـزاب"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          SectionRoundedBottom(),

          // TODO: Recent sura
          SectionTitle(label: "قائـمة القـراءة الأخيرة"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          SectionRoundedBottom(),

          // TODO: Recent hizb
          SectionTitle(label: "قائـمة القـراءة الأخيرة"),
          SectionRoundedTop(),
          // ! e.g
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          MainListItem(title: '', number: 5, label: '', type: ReadType.Surah),
          SectionRoundedBottom(),
        ],
      ),
    );
  }
}
