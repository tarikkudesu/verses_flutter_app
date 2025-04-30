import 'package:flutter/material.dart';

class MainPageNav extends StatelessWidget {
  const MainPageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      child: ListTile(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        trailing: GestureDetector(
          onTap: () => Navigator.pushNamed(context, "/search"),
          child: Icon(Icons.search, color: Colors.black),
        ),
      ),
    );
  }
}
