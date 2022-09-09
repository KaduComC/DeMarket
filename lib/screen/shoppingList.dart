import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListShoppingView extends StatefulWidget {
  const ListShoppingView({Key? key}) : super(key: key);

  @override
  State<ListShoppingView> createState() => _ListShoppingViewState();
}

class _ListShoppingViewState extends State<ListShoppingView> {
  final bool _pinned = false;
  final bool _floating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            floating: _floating,
            expandedHeight: 300,
            backgroundColor: Colors.white,
            // title: Text(
            //     'Lista de compras',
            //     style: TextStyle(color: Colors.black),
            //   ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Text(
                  'Lista de compras',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              background:
                  SvgPicture.asset('assets/images/undraw_chore_list.svg', fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}
