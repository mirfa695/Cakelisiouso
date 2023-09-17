import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({required this.img,required this.text,this.height,this.width,this.align,
    Key? key}) : super(key: key);
  String img;
  String text;
  double? height;
  double? width;
  AlignmentGeometry? align;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: NetworkImage(
                      img),
                  fit: BoxFit.cover)),
        ),
        Container(height: height,width: width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: CupertinoColors.black.withOpacity(.3)),),
        Align(alignment:align?? Alignment.bottomCenter,
            child: Text(text,style: TextStyle(color: CupertinoColors.white,fontFamily: 'Corm',fontSize: 25),))
      ],
    );
  }
}
