import 'package:cake/custom_widgets/custom_textfield.dart';
import 'package:cake/screens/login_page.dart';
import 'package:cake/screens/nav_page.dart';
import 'package:cake/utilities/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextEditingController = TextEditingController();

  final passwordTextEditingController = TextEditingController();
  final confirmTextEditingController = TextEditingController();
  bool _passwordVisible = false;
  final formKey=GlobalKey<FormState>();

  @override
  void initState() {
    _passwordVisible = false;
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/img_2.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 130.0, right: 15, left: 15, bottom: 130),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20)),
              child: Form(key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Register',
                      style: Text1.textStyle,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        text: 'email',
                        val: (value){if(value==null||!value.contains('@')||!value.endsWith('.com')){return'Enter valid email';}return null;},
                        con: emailTextEditingController,
                        icon: Icons.account_circle,
                        choice: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        text: 'password',
                        val: (value){if(value==null||value.length>8){return'Must be greater than 8';}return null;},
                        con: passwordTextEditingController,
                        icon: Icons.account_circle,
                        choice: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CustomTextField(
                        text: 'confirm password',
                        val: (value){if(value==passwordTextEditingController.text){return 'Password must be same';}},
                        con: confirmTextEditingController,
                        choice: !_passwordVisible,
                        icon: Icons.lock,
                        eye: IconButton(
                          icon: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 40,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                          if(formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation()));
                          }
                          },
                          child: Text('Register'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Text1.bcolor),
                        )),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Account exists?"),
                        TextButton(
                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                          }, child:  Text('Signin',
                          style: TextStyle(color: Text1.bcolor),)
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
