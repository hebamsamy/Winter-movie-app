import 'package:flutter/material.dart';
import 'package:online_shop/Pages/ListPage.dart';
import 'package:online_shop/Pages/SearchPage.dart';
import 'package:online_shop/Pages/homepage.dart';
import 'package:online_shop/Pages/settingspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurentIndex = 0;
  List<Widget> Pages = [HomePage(), ListPage(), SearchPage(), SettingsPage()];
  List<String> headers = ["Home", "Explore more movies", "Search", "Setting"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.headers[CurentIndex]),
      ),
      body: this.Pages[CurentIndex],
      drawer: Drawer(backgroundColor: Colors.amber),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: CurentIndex,
        onTap: (value) {
          setState(() {
            CurentIndex = value;
          });
          print(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.red.shade300),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Movies",
              backgroundColor: Colors.red.shade500),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.red.shade700),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.red.shade900),
        ],
      ),
    );
  }
}

// child: TextButton(
//         child: Text("go to profile"),
//         onPressed: () {
//           //navigate
//           Navigator.of(context)
//               .push(CupertinoPageRoute(builder: (context) => ProfileScreen()));
//         },