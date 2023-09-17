import 'dart:ui';

import 'package:cake/screens/login_page.dart';
import 'package:cake/utilities/textstyle.dart';

import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(alignment: Alignment.bottomCenter,
          child: FloatingActionButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },child: Icon(Icons.arrow_forward,color: Colors.black,),backgroundColor: Colors.white,)),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img.png'), fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(100)),
                color: Colors.deepOrangeAccent[100]?.withOpacity(.4)),
            child: Center(
              child: Text('''Customize & Get
Your Best cake''',style: Text1.textStyle),
            ),
          ),
        ),
      ),
    );
  }
}
