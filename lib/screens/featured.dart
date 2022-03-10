import 'package:flutter/material.dart';

class FeaturedPage extends StatelessWidget {
  const FeaturedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blueAccent,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)))),
      ),
      appBar: AppBar(
        title: new Text("Featured Books"),
      ),
    );
  }
}
