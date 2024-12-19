import 'package:flutter/material.dart';
import 'package:tugas/layout/home/GridViewLearning.dart';
import 'package:tugas/layout/home/ListViewLearning.dart';
import 'package:tugas/layout/home/MyHomepage.dart';
import 'package:tugas/layout/home/Newspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(), // Halaman utama
      routes: {
        '/gridview': (context) => const GridViewLearning(),
        '/listview': (context) => const ListViewLearning(),
        '/newspage': (context) => const Newspage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    const MyHomepage(), // Home Page
    const GridViewLearning(), // GridView
    const ListViewLearning(), // ListView
  ];

  // Ganti halaman berdasarkan index
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Halaman aktif
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tag), // Ganti ikon dengan tanda pagar (#)
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
        ],
      ),
    );
  }
}
