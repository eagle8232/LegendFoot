import 'package:flutter/material.dart';
import 'home_view.dart';
import 'transferred_players_view.dart';
import 'create_match_view.dart';

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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
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
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('LegendFoot'),
          backgroundColor: const Color(0xFF0A0F2A),
        ),
        body: TabBarView(
          children: [
            HomeView(),
            TransferredPlayersView(),
            CreateMatchView(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Transfers', icon: Icon(Icons.swap_horiz)),
            Tab(text: 'Create Match', icon: Icon(Icons.add_circle_outline))
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicator: BoxDecoration(),
        ),
        backgroundColor: const Color(0xFF0A0F2A),
      ),
    );
  }
}
