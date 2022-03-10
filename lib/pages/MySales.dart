import 'package:flutter/material.dart';

class MySales extends StatelessWidget {
  const MySales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('My Sales'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
      );
}
