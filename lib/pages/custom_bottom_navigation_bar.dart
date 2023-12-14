import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentPage;
  final Function(int, BuildContext) onItemTapped;

  CustomBottomNavigationBar({
    required this.currentPage,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: Color.fromARGB(255, 249, 217, 73),
      unselectedItemColor: Color.fromARGB(255, 60, 72, 107),
      onTap: (index) => onItemTapped(index, context),
      currentIndex: currentPage,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
        BottomNavigationBarItem(
            icon: Icon(Icons.theaters_rounded), label: "My Tickets"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
      selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
      unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
