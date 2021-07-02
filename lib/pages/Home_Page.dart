import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Flutter";
    return Scaffold(
      appBar: AppBar(
        title: Text('Flipkart'), // App name
      ),
      body: Center(
        child: Container(
          child: Text('$name Project of $days days'),
        ),
      ),
      drawer: Drawer(),  // navigation drawer (menu)
    );
  }
}
