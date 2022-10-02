import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:tugas2_kelompok3/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    MyStatefulWidget.tag: (context) => MyStatefulWidget(),
    homePage.tag: (context) => homePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
