import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/coming_soon.dart';
import 'package:netflix_clone/screens/download.dart';
import 'package:netflix_clone/screens/home_page.dart';
import 'package:netflix_clone/screens/more.dart';
import 'package:netflix_clone/screens/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  int selectedIndex = 0;

  void onTap(int pageValue) {
    setState(() {
      selectedIndex = pageValue;
    });
    pageController.jumpToPage(pageValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 22,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: Theme.of(context).textTheme.bodyText1!.merge(
              const TextStyle(fontSize: 12),
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.button!.merge(
              const TextStyle(fontSize: 11),
            ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.watch_later,
              color: Colors.white,
            ),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download,
              color: Colors.white,
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.vertical_distribute,
              color: Colors.white,
            ),
            label: 'More',
          ),
        ],
        onTap: onTap,
      ),
      body: PageView(
        controller: pageController,
        children: [
          const HomePage(),
          const Search(),
          const CommingSoon(),
          Download(),
          const More(),
        ],
        onPageChanged: (value) {
          selectedIndex = value;
        },
      ),
    );
  }
}
