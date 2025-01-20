import 'package:flutter/material.dart';
import 'package:ui_task/pages/discover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prelura',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ), // For large body text
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ), // For medium body text
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          // backgroundColor: Colors.black, // Set your desired color
          selectedItemColor: Colors.white, // Active item color
          unselectedItemColor: Colors.white, // Inactive item color
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const DiscoverPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.sensor_window_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.add_circle_outline_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
