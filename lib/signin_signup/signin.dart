import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                image: AssetImage('images/undraw_Sign_in_re_o58h.png'),
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
                      Icons.phone,
                      color: Color(0xFF510C83),
                      size: 20,
                    ),
                    hintText: "Número de telefone",
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
              const SignInButtonWidget(),
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
}

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 350.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        gradient: LinearGradient(
            colors: [Color(0xFF2A0845), Color(0xFF6441A5)],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.deepPurple,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
          child: Text("SIGN IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),),
        ),
        onPressed: () => {},
      ),
    );
  }
}

class FacebookGoogleLogin extends StatelessWidget {
  const FacebookGoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black12,
                        Colors.black54,
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 130.0,
                height: 2.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Ou",
                  style: TextStyle(
                    color: Color(0xFF2c2b2b),
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.black12,
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                width: 130.0,
                height: 2.0,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 40.0),
              child: GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF2A0845), Color(0xFF6441A5)],
                    ),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.facebookF,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF2A0845), Color(0xFF6441A5)],
                    ),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.google,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
