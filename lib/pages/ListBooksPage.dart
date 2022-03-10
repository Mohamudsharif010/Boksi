import 'package:flutter/material.dart';

class ListBooksPage extends StatelessWidget {
  const ListBooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('List Books to Sell'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
      );
}
