import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main/dashboard.dart';
import '../main/home.dart';
import '../models/iconsLoginFaceGoogle.dart';
import '../models/in_upBottom.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _escondePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assetes/images/undraw_Sign_in_re_o58h.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    color: const Color(0xFF510C83)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                child: TextField(
                  showCursor: true,
                  keyboardType: TextInputType.phone,
                  autocorrect: false,
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          (30.0),
                        ),
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Color(0xFF510C83),
                      size: 20,
                    ),
                    hintText: "E-mail",
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                child: TextField(
                  showCursor: true,
                  autocorrect: false,
                  enableInteractiveSelection: false,
                  obscureText: _escondePass,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          (30.0),
                        ),
                      ),
                    ),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Color(0xFF510C83),
                      size: 20.0,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _escondePass ? Icons.visibility : Icons.visibility_off,
                        color: _escondePass
                            ? Colors.grey.shade600
                            : const Color(0xFF510C83),
                        size: 20.0,
                      ),
                      onPressed: () {
                        setState(
                          () {
                            _escondePass = !_escondePass;
                          },
                        );
                      },
                    ),
                    hintText: "Senha",
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 150.0,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SignIn_UpButtonWidget(
                text: "SIGN IN",
                widgetChild: () => _showPageHome(context),
              ),
              const SizedBox(
                height: 5,
              ),
              const FacebookGoogleLogin(),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Não tem conta? ",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Color(0xFF2A0845),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showPageHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
