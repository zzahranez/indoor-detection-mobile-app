import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:indoor_detection/screens/home/home.dart';
import 'package:indoor_detection/screens/info/info.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    Center(child: Text("Add Page")),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // body sesuai tab yang aktif
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.blueGrey[600],
        initialActiveIndex: 0,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.camera, title: 'Camera'),
          TabItem(icon: Icons.message, title: 'Information'),
        ],
        onTap: (int i) {
          setState(() {
            _selectedIndex = i; // update index
          });
        },
      ),
    );
  }
}
