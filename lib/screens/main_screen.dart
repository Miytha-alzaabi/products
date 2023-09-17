import 'package:flutter/material.dart';
import 'package:products/screens/home_screen.dart';
import 'package:products/screens/product_screen.dart';
import 'package:products/screens/profile_screen.dart';
import 'package:products/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
var index =0;
List<Widget>screens = [
  HomeScreen(),
  ProfileScreen(),
  SearchScreen(),
  ProductScreen(),
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {
            
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Product"),
        ]),
    );
  }
}