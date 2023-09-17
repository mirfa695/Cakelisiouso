import 'package:flutter/cupertino.dart';

class CustomItemContainer extends StatelessWidget {
   CustomItemContainer({required this.img,required this.name,
    Key? key}) : super(key: key);
  String img;
  String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(
                     img),
                  fit: BoxFit.cover)),
        ),
        Text(name,style: TextStyle(fontFamily: 'Arvo'),)
      ],
    );
  }
}
