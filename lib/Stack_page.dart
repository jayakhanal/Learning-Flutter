import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title:const  Text('Title',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.red,

            ),
            Container(
              height: 600,
              width: 400,
              color: Colors.orange,

            ),

            Container(
              height: 200,
              width: 400,
              color: Colors.white,

            ),

          ],
        ),

      )
    );
      
      
    
  }
}