import 'package:flutter/material.dart';
import 'package:second_assignment/drawer_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation ==
        Orientation.landscape; // check if the orientation is landscape

    return Scaffold(
        appBar: AppBar(
          title: Text("Second Assignment"),
        ),
        drawer: isLandscape
            ? null //Landscape
            : Drawer( //portrait
                backgroundColor: Color(0xFFFFDCE8),
                child: ListView(
                  children: [
                    DrawerMenu("First Element"),
                    DrawerMenu("Second Element"),
                    DrawerMenu("Third Element"),
                    DrawerMenu("Forth Element"),
                    DrawerMenu("Fifth Element"),
                  ],
                ),
              ),
        body: isLandscape
            ? Row( //Landscape
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: ListView(
                        children: [
                          DrawerMenu("First Element"),
                          DrawerMenu("Second Element"),
                          DrawerMenu("Third Element"),
                          DrawerMenu("Forth Element"),
                          DrawerMenu("Fifth Element"),
                        ],
                      )),
                  Container( //portrait
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.red),
                ],
              )
            : Container(color: Colors.red)

        );

  }
}
