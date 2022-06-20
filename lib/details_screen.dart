import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String path;

  const DetailScreen(this.path);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(tag: path, child: Image.asset(path)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is a clock",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "To choose time is to save time.",
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
