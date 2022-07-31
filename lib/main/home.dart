import 'package:flutter/material.dart';

import 'frutas.dart';

// import '../Sec_Pages/frutas.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBar(
            title: const Text('TEXTO'),
            centerTitle: true,
            toolbarHeight: 150,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _Banner(name: 'TESTE', onClick: () {}),
                _Banner(name: 'TESTE', onClick: () {}),
                _Banner(name: 'TESTE', onClick: () {}),
                _Banner(name: 'TESTE', onClick: () {}),
              ],
            ),
          ),
          _BuildCont(
              onClick: () => _showPage(context), name: 'Frutas', info: 'images/frutas_a.jpg'),
          _BuildCont(
              onClick: () {}, name: 'Vegetais', info: 'images/vegetais.jpg'),
          _BuildCont(
              onClick: () {}, name: 'Legumes', info: 'images/legumes.jpg'),
          _BuildCont(
              onClick: () {}, name: 'Carnes', info: 'images/carnes.jpg'),
          _BuildCont(
              onClick: () {}, name: 'Bebidas', info: 'images/bebidas.jpg'),
        ],
      ),
    );
  }

  void _showPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Frutas()));
  }
}

class _BuildCont extends StatelessWidget {
  const _BuildCont(
      {Key? key, required this.onClick, required this.name, required this.info})
      : super(key: key);

  final String name;
  final Function onClick;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Material(
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(info), fit: BoxFit.cover),
              color: Colors.blue,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Image.asset(info)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({Key? key, required this.name, required this.onClick})
      : super(key: key);

  final String name;
  final Function onClick;

  // final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Material(
        child: InkWell(
          onTap: () => onClick(),
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Container(
              width: 250,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/cesta_basica.jpg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
