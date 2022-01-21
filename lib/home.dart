import 'package:flutter/material.dart';
import 'package:recipe/card1.dart';

/// Note about the Theme
/// The AppBar style now reads: Theme.of(context).textTheme.headline6 instead of: theme.textTheme.headline6. Theme.of(context) returns the nearest Theme in the widget tree. If the widget has a defined Theme, it returns that. Otherwise, it returns the app’s theme.

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const Card1(),
    // TODO Replace card2
    Container(
      color: Colors.yellow,
    ),

    // TODO Replace card3
    Container(
      color: Colors.purpleAccent,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Fooderlich',
        style: Theme.of(context).textTheme.headline6,
      )),
      body: pages[_selectedIndex],
      // Center(
      //   child: Text(
      //     'Let\'s get cooking 👩‍🍳',
      //     style: Theme.of(context).textTheme.headline1,
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
        ],
      ),
    );
  }
}
