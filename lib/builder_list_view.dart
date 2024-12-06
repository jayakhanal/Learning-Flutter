import 'package:flutter/material.dart';

class BuilderListview extends StatelessWidget {
  const BuilderListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title:Text("Builder List View"),
      ),
      body:ListView.builder(
         itemCount: 24,
         padding: const EdgeInsets.symmetric(),
         itemBuilder: (ctx,index){
          return Container(
            height:400,
            width:400,
            color: Colors.red,
            margin: const EdgeInsets.all(10.0),
            child:Text("$index"),
          );
         },
      ),
    );
  }
}