import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _escondePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 10.0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    color: const Color(0xFF510C83),
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Color(0xFF510C83),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: Row(
              children: const <Widget>[
                Flexible(
                  flex: 1,
                  child: TextField(
                    showCursor: true,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            (30.0),
                          ),
                        ),
                      ),
                      filled: true,
                      hintText: "Nome",
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  flex: 1,
                  child: TextField(
                    showCursor: true,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            (30.0),
                          ),
                        ),
                      ),
                      filled: true,
                      hintText: "Sobrenome",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
            child: TextField(
              showCursor: true,
              keyboardType: TextInputType.emailAddress,
              autocorrect: true,
              enableInteractiveSelection: true,
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
                    size: 20.0,
                  ),
                  hintText: "E-mail"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
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
                    size: 20.0,
                  ),
                  hintText: "Número de telefone"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
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
            height: 20,
          ),
          const SignInButtonWidget(),
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/undraw_Login_re_4vu2.png'),
                fit: BoxFit.fill,
              ),
            ),
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
          child: Text(
            "SIGN UP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        onPressed: () => {},
      ),
    );
  }
}
