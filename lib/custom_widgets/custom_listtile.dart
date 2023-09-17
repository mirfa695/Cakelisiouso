import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/textstyle.dart';

class CustomListTile extends StatelessWidget {
   CustomListTile({required this.img,required this.name,required this.price,required this.description,
    Key? key}) : super(key: key);
  String img;
  String name;
  String description;
  String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8),
      child: Card(color: Colors.deepOrange[50],
        child: ListTile(
          leading: Image.network(img),
          title: Text(name,style: TextStyle(fontFamily: 'Corm',fontSize: 23),),
          subtitle: Column(
            children: [
              Text(description),
              Row(
                children: [
                  Column(
                    children: [
                      Text('quantity:1'),
                      Text(price)
                    ],
                  ),
                  SizedBox(width: 60,),
                  ElevatedButton(onPressed: (){}, child: Text('add'),style: ElevatedButton.styleFrom(backgroundColor: Text1.bcolor),)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
