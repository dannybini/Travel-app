import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/explore_page.dart';
import 'package:travel_app/pages/favorite_page.dart';
import 'package:travel_app/pages/profile_page.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [
    const ExplorePage(),
    const Home(),
    const FavouritePage(),
    const ProfilePage()
  ];
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[selectedItem],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8.0, 20.0, 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavyBar(
            backgroundColor: Colors.deepOrangeAccent,
            selectedIndex: selectedItem,
            onItemSelected: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            containerHeight: 70,
            items: [
              BottomNavyBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                activeColor: Colors.white,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.timelapse),
                title: const Text('Explore'),
                activeColor: Colors.white,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.favorite),
                title: const Text('Favorite'),
                activeColor: Colors.white,
              ),
              BottomNavyBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Person'),
                activeColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
