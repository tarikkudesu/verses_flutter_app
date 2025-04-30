import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/shared/section.dart';
import 'package:verses/services/json.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:verses/shared/settings.dart';

class Read extends StatefulWidget {
  // ! Props
  final int index;
  final String name;
  final ReadType type;
  const Read({
    super.key,
    required this.index,
    required this.name,
    required this.type,
  });

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  AppSettings pre = AppSettings();
  // ! State
  bool _loading = true;
  bool _error = false;
  List<String>? _data;

  @override
  void initState() {
    super.initState();
    ReadingContent();
  }

  Future<void> ReadingContent() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      final String contents = await rootBundle.loadString(
        'assets/quran/${widget.type == ReadType.Surah ? 'surah' : 'hizb'}/${widget.index}.txt',
      );
      setState(() {
        _data = contents.split('ۖ');
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _loading = false;
        _error = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 200),
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.pink,
              size: 40,
            ),
          ),
        ],
      );
    }
    if (_error) {
      return Column(
        children: [
          SectionRoundedTop(),
          Container(
            color: Colors.white,
            child: Center(child: Text("No data loaded")),
          ),
          SectionRoundedBottom(),
        ],
      );
    }
    return Scaffold(
      body: ListView(
        children: [
          PageTitle(title: widget.name),
          // Page Nav
          SectionNav(),

          // TODO: Reading Content
          SectionRoundedTop(),

          Container(
            color: Colors.white,
            child: Column(
              children:
                  _data!
                      .map(
                        (word) => Text(
                          word,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'kitab',
                            fontSize: pre.fontSize,
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
          // Page Content
          SectionRoundedBottom(),
        ],
      ),
    );
  }
}
