import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

//* Day 11 we learned about context,contraints
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ), 
      body: Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
