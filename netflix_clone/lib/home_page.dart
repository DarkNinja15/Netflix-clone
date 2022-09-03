import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/slivers.dart';

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
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              child: Image.asset('assets/naruto.jpg'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.add, color: Colors.white),
                        Text(
                          'My List',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      label: const Text(
                        'Play',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Column(
                      children: const [
                        Icon(Icons.info, color: Colors.white),
                        Text(
                          'Info',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 270,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, right: 100),
                    child: Text(
                      'Continue watching for EvilShadow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.network(
                                      'https://cdn.animixplay.to/min/mal/6/73245.jpg'),
                                ),
                                const LinearProgressIndicator(
                                  value: 50,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.info,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.network(
                                      'https://cdn.animixplay.to/i/78039ad93f38c6d1a1f752c898e22292.jpg'),
                                ),
                                const LinearProgressIndicator(
                                  value: 50,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.info,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Slivers(
            heading: 'Popular on Netflix',
            category: 'popular',
          ),
          const Slivers(
            heading: 'Animated',
            category: 'animated',
          ),
          const Slivers(
            heading: 'Netflix Orginals',
            category: 'originals',
          ),
          SliverToBoxAdapter(
            child: FittedBox(
              alignment: Alignment.centerLeft,
              // height: 25,
              child: Column(
                children: const [
                  Text(
                    'Available Now: Season 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 190,
              child: Image.network(
                  'https://www.whats-on-netflix.com/wp-content/uploads/2021/10/shadow-and-bone-season-2-2022.jpg'),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Play',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.add, color: Colors.white),
                      Text(
                        'My List',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
