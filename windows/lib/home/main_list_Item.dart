import 'package:flutter/material.dart';
import 'package:verses/read/read.dart';
import 'package:verses/services/json.dart';

class MainListItem extends StatelessWidget {
  final String title;
  final String label;
  final int number;
  final ReadType type;
  const MainListItem({
    super.key,
    required this.title,
    required this.number,
    required this.label,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => Read(index: number, name: title, type: type),
            ),
          ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: ListTile(
          leading: Icon(Icons.favorite_outline),
          title: Text(
            title,
            textAlign: TextAlign.right,
            style: TextStyle(fontFamily: "hafs", fontSize: 20),
          ),
          subtitle: Text(
            label,
            textAlign: TextAlign.right,
            style: TextStyle(fontFamily: "hafs"),
          ),
          trailing: Text(number.toString(), style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
