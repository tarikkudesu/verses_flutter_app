import 'package:flutter/material.dart';

class GlobalNavItem extends StatelessWidget {
  final String label;
  final int myIndex;
  final int currentIndex;
  const GlobalNavItem({
    super.key,
    required this.label,
    required this.myIndex,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Text(
        label,
        style: TextStyle(
          color: myIndex == currentIndex ? Colors.black : Colors.black26,
          fontWeight: FontWeight.bold,
          fontFamily: "qalam",
        ),
      ),
    );
  }
}

class GlobalNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) navigateToPage;
  const GlobalNav({
    super.key,
    required this.currentIndex,
    required this.navigateToPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () => navigateToPage(0),
              child: GlobalNavItem(
                myIndex: 0,
                currentIndex: currentIndex,
                label: "ســور",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0,
              ),
              onPressed: () => navigateToPage(1),
              child: GlobalNavItem(
                myIndex: 1,
                currentIndex: currentIndex,
                label: "أحـزاب",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
