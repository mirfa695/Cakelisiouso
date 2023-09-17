import 'package:cake/screens/cart_page.dart';
import 'package:cake/screens/home_page.dart';
import 'package:cake/screens/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
      CartPage(),
     ProfilePage(),
  ];
  void _updateIndex(int value) {
    setState(() {
      pageIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.red[100],
        backgroundColor: Colors.deepOrange[200],

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: pageIndex,
        onTap: _updateIndex,
      ),

    );

  }
}

