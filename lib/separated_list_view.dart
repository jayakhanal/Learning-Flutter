import 'package:flutter/material.dart';

class SeperatedListView extends StatelessWidget {
  const SeperatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Seperated List View"),
    ),
    body: ListView.builder(
      itemCount: 24,
      itemBuilder: (ctx, index){
        return Container(
          height: 400,
          width: 400,
          color: Colors.red,
          margin: const EdgeInsets.all(10.0),
          child: Text("$index"),
        );
      },
    ),
    );
  }
}