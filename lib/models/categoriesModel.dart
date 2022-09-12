import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  const Categoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Nome',
          style: TextStyle(color: Colors.black, fontSize: 15),
        )
      ],
    );
  }
}
