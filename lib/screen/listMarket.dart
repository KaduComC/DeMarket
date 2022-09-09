import 'package:flutter/material.dart';

class ListShopping extends StatefulWidget {
  const ListShopping({Key? key}) : super(key: key);

  @override
  State<ListShopping> createState() => _ListShoppingState();
}

class _ListShoppingState extends State<ListShopping> {
  List<String> ListaCompras = [
    'Uvas',
    'Uvas',
    'Uvas',
    'Uvas',
    'Uvas',
    'Uvas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de compras',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 250,
        automaticallyImplyLeading: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 180),
          child: IconButton(
            onPressed: () => Navigator.pop(context, false),
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          // const Padding(
          //   padding: EdgeInsets.only(top: 60.0, left: 30.0),
          //   child: Text(
          //     "Lista de compras",
          //     style: TextStyle(
          //       fontWeight: FontWeight.w300,
          //       fontSize: 40,
          //       color: Color(0xFF510C83),
          //     ),
          //   ),
          // ),
          ListView.builder(
            itemCount: ListaCompras.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(child: ListTile(title: Text(ListaCompras[index])));
            },
          ),
        ],
      ),
    );
  }
}
