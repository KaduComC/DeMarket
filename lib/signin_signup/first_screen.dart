import 'package:flutter/material.dart';
import 'package:tcc/main/home.dart';
import 'package:tcc/signin_signup/signin.dart';
import 'package:tcc/signin_signup/signup.dart';

import '../models/in_upBottom.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Text(
              "TCC PROJECT",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 50,
                color: Color(0xFF510C83),
              ),
            ),
          ),
          Container(
            height: 450,
            width: 900,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assetes/images/undraw_empty_cart_co35.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SignIn_UpButtonWidget(
            text: "SIGN IN",
            widgetChild: () => _showPageIn(context),
          ),
          const SizedBox(
            height: 15,
          ),
          SignIn_UpButtonWidget(
            text: "SIGN UP",
            widgetChild: () => _showPageUp(context),
          ),
        ],
      ),
    );
  }

  void _showPageIn(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Signin()));
  }

  void _showPageUp(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Signup()));
  }
}
