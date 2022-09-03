import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Slivers extends StatelessWidget {
  final String heading;
  final String category;
  const Slivers({
    Key? key,
    required this.heading,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Padding(
              padding: heading == 'Animated'
                  ? const EdgeInsets.only(right: 300.0)
                  : const EdgeInsets.only(right: 240.0),
              child: Text(
                heading,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 170,
              child: FutureBuilder<QuerySnapshot>(
                future: FirebaseFirestore.instance.collection(category).get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Lottie.asset('assets/animation.json');
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: null,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.network(
                                snapshot.data!.docs[index]['image'].toString(),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return const Text('hello');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
