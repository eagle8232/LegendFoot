import 'package:flutter/material.dart';
import 'home_view.dart';
import 'transferred_players_view.dart';
import 'create_match_view.dart'; // Import the Create Match View

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LegendFoot',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Set the scaffold background color to white
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple, // Customize AppBar background color
          titleTextStyle: TextStyle(
            color: Colors.white, // Set title text color to white
            fontSize: 20, // You can customize the font size as well
            fontWeight: FontWeight.bold, // Customize the font weight
          ),
          iconTheme: IconThemeData(color: Colors.white), // Set icon color to white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainTabBar(),
    );
  }
}

class MainTabBar extends StatelessWidget {
  const MainTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Now there are three tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('LegendFoot'),
          backgroundColor: const Color(0xFF0A0F2A),
        ),
        body: TabBarView(
          children: [
            HomeView(), // Home View tab
            TransferredPlayersView(), // Transferred Players View tab
            CreateMatchView(), // Create Match View tab
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Transfers', icon: Icon(Icons.swap_horiz)),
            Tab(text: 'Create Match', icon: Icon(Icons.add_circle_outline)), // New tab for creating matches
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicator: BoxDecoration(), // Remove the default indicator
        ),
        backgroundColor: const Color(0xFF0A0F2A),
      ),
    );
  }
}
