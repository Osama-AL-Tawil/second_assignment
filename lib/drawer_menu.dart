import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  // IconData leading;
  String title;
 // String subtitle;

  DrawerMenu(this.title);

  // DrawerMenu({required this.leading,required this.subtitle,required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(title),
      //subtitle: Text(subtitle),
      // leading: Icon(leading),
      //trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
