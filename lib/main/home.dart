import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

import 'frutas.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AnimSearchBar(
                  width: 400,
                  textController: textController,
                  onSuffixTap:  () {
                    setState(() {
                      textController.clear();
                    });
                  }),
              const Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 20.0, left: 15.0),
                child: Text(
                  "Categorias",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 55,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeCategory(title: 'Pizaa', onClick: () {}),
                    makeCategory(title: 'Burgers', onClick: () {}),
                    makeCategory(title: 'Kebab', onClick: () {}),
                    makeCategory(title: 'Desert', onClick: () {}),
                    makeCategory(title: 'Salad', onClick: () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 15.0),
                child: Text(
                  "Aleatorio",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ],
          ),
          // ),// Column(
          //   children: <Widget>[
          //     const Padding(
          //       padding: EdgeInsets.all(20.0),
          //       child: Text(
          //         "Categorias",
          //         style: TextStyle(fontSize: 30.0),
          //       ),
          //     ),
          //     Container(
          //       height: 70.0,
          //       width: double.infinity,
          //       margin: EdgeInsets.only(left: 15.0, right: 15.0),
          //       child: ListView(
          //         scrollDirection: Axis.horizontal,
          //         children: <Widget>[
          //           categoria(nome: 'TESTE', onClick: () {}),
          //           categoria(nome: 'TESTE', onClick: () {}),
          //           categoria(nome: 'TESTE', onClick: () {}),
          //           categoria(nome: 'TESTE', onClick: () {}),
          //         ],
          //       ),
          //     ),
        ],
      ),
    );
  }
}

Widget makeCategory({title, onClick}) {
  return Material(
    type: MaterialType.transparency,
    child: InkWell(
      onTap: () => onClick(),
      child: Container(
        width: 150.0,
        margin: const EdgeInsets.only(right: 10, left: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF613D9F),
          // color: Colors.grey[200],

          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    ),
  );
}
