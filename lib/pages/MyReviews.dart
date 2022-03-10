import 'package:flutter/material.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('My Reviews'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
      );
}
