import 'package:flutter/material.dart';

class MyData extends StatelessWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 15.0, right: 15.0),
            child: TextButton.icon(
              onPressed: () => {},
              icon: const Icon(Icons.settings, color: Colors.black),
              label: const Text(
                'Configurações',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),

            ),
          ),
          Container(
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assetes/images/undraw_Profile_data_re_v81r.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
