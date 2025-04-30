import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:verses/home/main_list_Item.dart';
import 'package:verses/shared/page_title.dart';
import 'package:verses/home/global_nav.dart';
import 'package:verses/shared/section.dart';
import 'package:verses/services/json.dart';
import 'package:verses/home/drawer.dart';
import 'package:flutter/material.dart';
import 'package:verses/home/nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_pageListener);
  }

  void _pageListener() {
    setState(() {
      _currentPage = _pageController.page?.round() ?? 0;
    });
  }

  void navigateToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GlobalNav(
        currentIndex: _currentPage,
        navigateToPage: navigateToPage,
      ),
      drawer: Drawer(child: DrawerContent()),
      body: Column(
        children: [
          PageTitle(title: "القرآن"),
          MainPageNav(),
          Expanded(child: HomePageData(pageController: _pageController)),
        ],
      ),
    );
  }
}

class HomePageData extends StatefulWidget {
  const HomePageData({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  @override
  State<HomePageData> createState() => _HomePageDataState();
}

class _HomePageDataState extends State<HomePageData> {
  List<DataClass>? _sData;
  List<DataClass>? _hData;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      // ? load sura data
      final String sJsonString = await rootBundle.loadString(
        'assets/quran/surah/Index.json',
      );
      final List<dynamic> sData = jsonDecode(sJsonString);
      List<DataClass> sDataList =
          sData.map((json) => DataClass.fromJson(json)).toList();

      // ? load hizb data
      final String hJsonString = await rootBundle.loadString(
        'assets/quran/hizb/Index.json',
      );
      final List<dynamic> hData = jsonDecode(hJsonString);
      List<DataClass> hDataList =
          hData.map((json) => DataClass.fromJson(json)).toList();
      setState(() {
        _hData = hDataList;
        _sData = sDataList;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: Colors.pink,
          size: 40,
        ),
      );
    }
    if (_sData == null || _hData == null) {
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
    return PageView(
      controller: widget._pageController,
      children: [
        SurahDataPageView(sData: _sData),
        HizbDataPageView(hData: _hData),
      ],
    );
  }
}

class HizbDataPageView extends StatelessWidget {
  const HizbDataPageView({super.key, required List<DataClass>? hData})
    : _hData = hData;

  final List<DataClass>? _hData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SectionRoundedTop(),
        // Page Content
        ..._hData!.map((hizb) {
          return MainListItem(
            title: hizb.name,
            number: hizb.index,
            label: hizb.info,
            type: ReadType.Hizb,
          );
        }),
        SectionRoundedBottom(),
      ],
    );
  }
}

class SurahDataPageView extends StatelessWidget {
  const SurahDataPageView({super.key, required List<DataClass>? sData})
    : _sData = sData;

  final List<DataClass>? _sData;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SectionRoundedTop(),
        ..._sData!.map((sura) {
          return MainListItem(
            title: sura.name,
            number: sura.index,
            label: sura.info,
            type: ReadType.Surah,
          );
        }),
        SectionRoundedBottom(),
      ],
    );
  }
}
