import 'package:basics/views/Coach_screen.dart';
import 'package:basics/views/Diet_plan_screen.dart';
import 'package:basics/views/Goats_screen.dart';
import 'package:basics/views/Lifetrons_Health.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  static const List<Widget> _screens = [
    LifetronsHealth(),
    CoachScreen(),
    DietPlanScreen(),
    GoalsScreen(),
  ];

  static const List<Widget> _title = [
    Text(
      'Lifetrons Health',
    ),
    Text(
      'Coach',
    ),
    Text(
      'Diet Plan',
    ),
    Text(
      'Goals',
    ),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 133, 8, 222),
        title: _title.elementAt(_selectedIndex),
      ),
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromARGB(255, 43, 2, 73),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedItemColor: const Color.fromARGB(255, 133, 8, 222),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Coach'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Diet Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined),
            label: 'Diet Plan',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
