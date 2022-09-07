import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../my_flutter_app_icons.dart';
import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

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
      // appBar: AppBar(
      //   // title: const Padding(
      //   //   padding: EdgeInsets.only(left: 1.0),
      //   //   child: Text(
      //   //     "Boas compras!",
      //   //     style: TextStyle(
      //   //       fontSize: 22.0,
      //   //       color: Colors.black,
      //   //     ),
      //   //   ),
      //   // ),
      //   elevation: 0,
      //   backgroundColor: Colors.grey[100],
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.only(right: 15.0),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.shopping_cart_outlined,
      //           color: Color(0xFF510C83),
      //         ),
      //       ),
      //     ),
      //   ],
      //   systemOverlayStyle: SystemUiOverlayStyle.dark,
      // ),
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
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.th_list_outline),
            label: 'Lista',
            activeIcon: Icon(MyFlutterApp.th_list),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Cesta',
            activeIcon: Icon(Icons.shopping_basket),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Usuário',
            activeIcon: Icon(Icons.account_circle),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _indexScreen,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: const Color(0xFF510C83),
        onTap: _onItemTapped,
      ),
    );
  }
}
