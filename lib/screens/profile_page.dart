import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilities/textstyle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account',style: Text1.textStyle,),centerTitle: true,backgroundColor: Colors.deepOrange[200]?.withOpacity(.4),),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_2.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Align(
                        alignment: FractionalOffset.centerLeft,
                        child: Text(
                          'Your profile',
                          style: TextStyle(color: CupertinoColors.black),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.deepOrange[200]?.withOpacity(.4)),
                  )),
              SizedBox(height: 15,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Align(
                        alignment: FractionalOffset.centerLeft,
                        child: Text(
                          'Order history',
                          style: TextStyle(color: CupertinoColors.black),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        Colors.deepOrange[200]?.withOpacity(.4)),
                  )),
              SizedBox(height: 15,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Align(
                        alignment: FractionalOffset.centerLeft,
                        child: Text(
                          'sign out',
                          style: TextStyle(color: CupertinoColors.black),
                        )),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        Colors.deepOrange[200]?.withOpacity(.4)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
