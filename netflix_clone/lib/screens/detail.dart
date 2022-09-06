// ignore_for_file: sort_child_properties_last

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/home_page.dart';
import 'package:netflix_clone/widgets/video.dart';

class Detail extends StatelessWidget {
  final DocumentSnapshot info;
  const Detail({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: SizedBox(
                        height: 250.0,
                        width: 150.0,
                        child: Image.network(info['image']),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${info['match']} match',
                          style: const TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          info['Aired'],
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              info['age'],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '${info['episodes']} episodes',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        color: Colors.white,
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => VideoDisplay(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Play',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        color: Colors.grey.shade500.withOpacity(0.4),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Download',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        info['desc'],
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        info['genres'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            onPressed: null,
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Text(
                                  'My List',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: null,
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: null,
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Share',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade500,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(info['image']),
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(
                      Colors.black87,
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
            ),
            expandedHeight: 700,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ],
      ),
    );
  }
}
