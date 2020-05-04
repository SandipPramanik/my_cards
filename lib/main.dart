import 'package:flutter/material.dart';
import 'package:mycards/menu_dashboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cards App',
      debugShowCheckedModeBanner: false,
      home: MenuDashboardPage(),
    );
  }
}
