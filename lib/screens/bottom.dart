import 'package:avu/screens/events.dart';
import 'package:avu/screens/faq.dart';
import 'package:avu/screens/home.dart';
import 'package:avu/screens/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  AppBar _buildAppBar(int index) {
    switch (index) {
      case 0:
        return AppBar(
          title: const Text('Home'),
          backgroundColor: const Color(0xFF9E0044),
        );
      case 1:
        return AppBar(
          title: const Text('Eventos'),
          backgroundColor: const Color(0xFF9E0044),
        );
      case 2:
        return AppBar(
          title: const Text('FAQS'),
          backgroundColor: const Color(0xFF9E0044),
        );
      case 3:
        return AppBar(
          title: const Text('Settings'),
          backgroundColor: const Color(0xFF9E0044),
        );
      default:
        return AppBar(
          title: const Text('Default'),
          backgroundColor: const Color(0xFF9E0044),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(_selectedIndex), // Cambia la AppBar según _selectedIndex
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          // Home Screen
          Home(),
          // Eventos Screen
          Events(),
          // FAQS Screen
          FAQ(),
          // Settings Screen
          Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFF9E0044),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Eventos',
            backgroundColor: Color(0xFF9E0044),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'FAQS',
            backgroundColor: Color(0xFF9E0044),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color(0xFF9E0044),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
