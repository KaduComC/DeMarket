import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      // bottom: true,
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,
              expandedHeight: 150,
              backgroundColor: Color(0xFF2A0845),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Categorias'),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
