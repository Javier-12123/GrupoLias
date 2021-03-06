import 'package:flutter/material.dart';
import 'package:grupoLias/Perfil/ui/screens/perfil.dart';
import 'package:grupoLias/Cotizaciones/ui/screens/tus-tickets.screen.dart';
import 'package:grupoLias/Tickets/ui/screens/tickets.screen.dart';

class BasicBottomNavBar extends StatefulWidget {
  const BasicBottomNavBar({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<BasicBottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    TicketsScreen(),
    const TusTicketsScreen(),
    const Perfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(8),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Tickets Disponibles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_num_sharp),
              label: 'Tus tickets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
