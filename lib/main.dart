import 'package:cake/screens/nav_page.dart';
import 'package:cake/screens/start_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){runApp(Main());}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
