import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/textstyle.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Your Cart',style: Text1.textStyle,),centerTitle: true,backgroundColor: Colors.deepOrange[200]?.withOpacity(.4),),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_2.png'),
                fit: BoxFit.cover)),

      ),
    );
  }
}
