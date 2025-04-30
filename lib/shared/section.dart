import 'package:flutter/material.dart';

class SectionNav extends StatelessWidget {
  const SectionNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: ListTile(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String label;
  const SectionTitle({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Text(
        label,
        style: TextStyle(color: Colors.pink, fontFamily: 'hafs', fontSize: 16),
        textAlign: TextAlign.right,
      ),
    );
  }
}

class SectionRoundedTop extends StatelessWidget {
  const SectionRoundedTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      height: 24,
    );
  }
}

class SectionRoundedBottom extends StatelessWidget {
  const SectionRoundedBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      height: 24,
    );
  }
}
