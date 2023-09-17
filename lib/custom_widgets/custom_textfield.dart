import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.text,
        required this.con,
        this.val,
        required this.choice,
        this.color1,
        this.icon,
        this.eye,
        Key? key})
      : super(key: key);
  final String text;
  final TextEditingController con;
  bool choice;
  Color? color1;
  IconData? icon;
  Widget? eye;
  String? Function(String?)? val;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: color1 ?? Colors.white),
      controller: con,
      validator: val,
      obscureText: choice,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
          suffixIcon: eye,
          filled: true,
          fillColor: Colors.white.withOpacity(.2),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Colors.black)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Colors.grey)),
          labelText: text,
          labelStyle: TextStyle(color: Colors.black.withOpacity(.3))),
    );
  }
}
