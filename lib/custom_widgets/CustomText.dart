import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({required this.text,required this.size,
    Key? key}) : super(key: key);
  String text;
  double size;
  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,
        child: Text(text,style: TextStyle(color: Colors.black,fontFamily: 'Corm',fontSize:size ),));
  }
}
