import 'package:flutter/material.dart';
import 'package:flutter_bottom_navy_bar/flutter_bottom_navy_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = BottomNavyController();

  final pages = [
    const Center(child: Text("Home Page")),
    const Center(child: Text("Messages Page")),
    const Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Body change based on selected tab
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return pages[controller.index];
        },
      ),

      /// Bottom navigation bar
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        controller: controller,

        iconSize: 30,
        itemSpacing: 5,

        selectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),

        unselectedLabelStyle: const TextStyle(color: Colors.grey),

        items: [
          BottomNavyBarItem(
            badgeCount: 3,
            icon: Icons.home,
            title: "Home",
            activeColor: Colors.blue,
          ),

          BottomNavyBarItem(
            icon: Icons.mail,
            title: "Messages",
            activeColor: Colors.yellow,
            badgeCount: 5,
          ),

          BottomNavyBarItem(
            icon: Icons.person,
            title: "Profile",
            activeColor: Colors.green,
            enabled: true,
          ),
        ],
      ),
    );
  }
}
