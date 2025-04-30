import 'package:verses/favourites/favourites.dart';
import 'package:verses/settings/settings.dart';
import 'package:verses/search/search.dart';
import 'package:verses/info/info.dart';
import 'package:verses/home/home.dart';

var appRoutes = {
  '/info': (context) => const Info(),
  '/search': (context) => const Search(),
  '/settings': (context) => const Settings(),
  '/favourites': (context) => const Favourites(),
};
