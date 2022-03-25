import 'package:flutter/material.dart';
import 'package:foodapp/screen/accountpage.dart';
import 'package:foodapp/screen/cart.dart';
import 'package:foodapp/screen/homepage.dart';
import 'package:foodapp/screen/search.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

int selectedIndex = 0;

class _NavState extends State<Nav> {
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    MyCartPage(),
    AccountPage()
   
  ];

  void _onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Colors.white,

        selectedItemColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 8),
        unselectedLabelStyle: TextStyle(fontSize: 8),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.orange,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // backgroundColor: primaryLight,
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: 'Search',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.local_offer),
          //   label: 'Sale',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTap,
        // fixedColor: Colors.orange,
      ),
    );
  }
}
