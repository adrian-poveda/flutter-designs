import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/buttons_page.dart';
import 'package:flutter_designs/src/pages/home_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));


    return MaterialApp(
      title: 'Flutter designs',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'basic'   : ( BuildContext context ) => BasicPage(),
        'scroll'  : ( BuildContext context ) => ScrollPage(),
        'buttons' : ( BuildContext context ) => ButtonsPage(),
        'home'    : ( BuildContext context ) => HomePage()
      },
    );
  }
}