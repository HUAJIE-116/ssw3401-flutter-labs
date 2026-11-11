import 'package:flutter/material.dart';
import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  // At the Lab 2 cutoff, these three tabs are temporary pages.
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    Center(child: Text('Search')),
    Center(child: Text('Tickets')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('My tickets')),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            // setState rebuilds the screen with the newly selected page.
            setState(() => _selectedIndex = index);
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          elevation: 10,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined),
                activeIcon: Icon(Icons.search),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                activeIcon: Icon(Icons.airplane_ticket),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile'),
          ],
        ),
      );
}
