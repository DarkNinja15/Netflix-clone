import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    int selectedIndex;
    void onTap(int pageValue) {
      setState(() {
        selectedIndex = pageValue;
      });
      pageController.jumpToPage(pageValue);
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.cover,
            ),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  'TV Shows',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Movies',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  'My List',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
    );
  }
}
