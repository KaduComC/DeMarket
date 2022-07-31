import 'package:flutter/material.dart';

import 'home.dart';

// import '../../../../../Users/cadua/Documents/Project_Flutter/Projeto/Main_Pages/home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _indexScreen = 0;
  PageController pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _indexScreen = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _indexScreen = index;
          });
        },
        children: const <Widget>[
          Home(),
          // Pesquisar(),
          // Cart(),
          // User(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Carrinho',
              activeIcon: Icon(Icons.shopping_cart_sharp)),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Usuário',
            activeIcon: Icon(Icons.person),
          ),
        ],
        currentIndex: _indexScreen,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.deepOrange,
        onTap: _onItemTapped,
      ),
    );
  }
}
