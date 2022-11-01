

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sesim_ol/choice_page.dart';
import 'package:sesim_ol/signin_page.dart';

import 'logined_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )), systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),

      body: Padding(
        padding: EdgeInsets.all(36),

        child: Material(
          borderRadius: BorderRadius.circular(36),
          elevation: 7,
          child: Container(
            height: 550,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(

                children: [
                  Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.contain))),


                  makeInput(label:'Email',obsureText: false),
                  makeInput(label:'Password',obsureText: true),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border(
                            bottom: BorderSide(color: Colors.white),
                            top: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white),
                            left: BorderSide(color: Colors.white))),
                    child: MaterialButton(
                      color: Colors.blue,
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChoicePage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
      );
  }

  Widget makeInput({label, obsureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[400]!,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!)),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

}
