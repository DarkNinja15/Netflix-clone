import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/home_page.dart';

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
                      children: [
                        Text('data'),
                      ],
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
            expandedHeight: 600,
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
