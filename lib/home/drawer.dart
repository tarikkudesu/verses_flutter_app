import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final Widget child;
  final String destination;
  const DrawerItem({super.key, required this.child, required this.destination});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, destination),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: child,
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        // TODO: Drawer content
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              Center(child: Image.asset('assets/logo.png', height: 80)),
              SizedBox(height: 12,),
              Text(
                "1.0.0 إصـــدار",
                style: TextStyle(fontFamily: "hafs", fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        // ? devider

        // TODO: Settings
        DrawerItem(
          destination: '/settings',
          child: ListTile(
            trailing: Icon(Icons.settings_outlined),
            title: Text(
              "الإعدادات",
              style: TextStyle(fontFamily: "hafs", fontSize: 18),
              textAlign: TextAlign.right,
            ),
          ),
        ),

        // TODO: Favourites
        DrawerItem(
          destination: '/favourites',
          child: ListTile(
            trailing: Icon(Icons.star_border_rounded),
            title: Text(
              "المفظلة",
              style: TextStyle(fontFamily: "hafs", fontSize: 18),
              textAlign: TextAlign.right,
            ),
          ),
        ),

        // TODO: Info
        DrawerItem(
          destination: '/info',
          child: ListTile(
            trailing: Icon(Icons.info_outline_rounded),
            title: Text(
              "حـــول الــتطبيق",
              style: TextStyle(fontFamily: "hafs", fontSize: 18),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ],
    );
  }
}
