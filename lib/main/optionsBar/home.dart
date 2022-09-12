import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:tcc/main/optionsBar/homeScreens/categories.dart';

import '../../models/categoriesModel.dart';
import '../../models/popularModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();

  // final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 20.0, right: 150),
            child: Text(
              "DeMarket",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Color(0xFF2A0845),
              ),
            ),
          ),
          Container(
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 370,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, right: 150),
                  child: InkWell(
                    onTap: () => _showCategorias(context),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        const Text(
                          "Categorias",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: <Widget>[
                      Wrap(
                        spacing: 10,
                        children: <Widget>[
                          Categoria(),
                          Categoria(),
                          Categoria(),
                          Categoria(),
                          Categoria(),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 370,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 180),
                    child: InkWell(
                      onTap: () {},
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          const Text(
                            "Popular",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.black)
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        Wrap(
                          spacing: 10,
                          children: <Widget>[
                            Popular(),
                            Popular(),
                            Popular(),
                            Popular(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCategorias(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Categorias()));
  }
}
