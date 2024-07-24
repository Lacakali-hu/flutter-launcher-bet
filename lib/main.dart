import 'package:flutter/material.dart';
import 'appdrawer.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Launcher',
      theme: ThemeData(
        fontFamily: 'FixelText',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const home(),
    );
  }
}





class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp(
      home: DefaultTabController(length: 8, child: Scaffold(appBar:  const TabBar(tabs: [
        Tab(text: "Home",),
        Tab(text: "Discover",),
        Tab(text: "Library",),
        Tab(text: "Weather",),
        Tab(text: "Channels",),
        Tab(text: "Radio",),
        Tab(text: "Apps",),
        Tab(text: "Settings",),
      ]),
      body:  TabBarView(children: [
const Text("data"),
const Text("data"),
const Text("data"),
const Text("data"),
const Text("data"),
const Text("data"),
Navigator(onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => const AppDrawer(),)),
const Text("data"),

      ]),)),
      );
  }
}





