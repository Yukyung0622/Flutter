import 'package:contact/screen/home_screen.dart';
import 'package:contact/screen/more_screen.dart';
import 'package:flutter/material.dart';
import 'package:contact/widget/boottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
      return MaterialApp(title: 'YuFlix',
      theme: ThemeData(
          brightness : Brightness.dark,
          primaryColor: Colors.black,
          hintColor: Colors.white,
      ),
        home: DefaultTabController(
            length:4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children:<Widget>[
                    HomeScreen(),
                    Container(child: Center(child: Text('search'),),),
                    Container(child: Center(child: Text('save'),),),
                    MoreScreen(),
                ],
              ),
              bottomNavigationBar: Bottom(),
            ),
        ),
      );
  }
}
