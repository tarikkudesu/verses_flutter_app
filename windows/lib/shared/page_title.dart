import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;
  const PageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 96),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 36,
            color: Colors.pink,
            fontFamily: "UrduTypeSetting",
          ),
        ),
      ),
    );
  }
}
