import 'package:flutter/material.dart';

class CountGridView extends StatelessWidget {
  const CountGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:3,
      childAspectRatio: 1.8,
      mainAxisSpacing: 10,
      children: List.generate(
        100,
        (index){
          return Container(
            height:200,
            width:200,
            color: Colors.blue,
          );
        }
      )
    );
  }
}