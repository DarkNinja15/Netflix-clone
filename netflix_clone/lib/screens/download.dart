import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.info_outline_rounded,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            const Text(
              'Smart Download',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: isOn
                  ? const Text(
                      'ON',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                    )
                  : const Text(
                      'OFF',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                    ),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.download_for_offline_rounded,
                size: 300,
                color: Colors.grey,
              ),
              const Text(
                'Your Downloads appears here',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const MaterialButton(
                    onPressed: null,
                    child: Text(
                      'Find Something To Download',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
