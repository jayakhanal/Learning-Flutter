import 'package:flutter/material.dart';

class PromosCard extends StatelessWidget {
  const PromosCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Card(
      color: Colors.white,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Promos For You",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            ),
             SizedBox(
              height: 10,
             ),
             Card(
              color: Colors.teal,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Center(
                  child: Text(
                    "Currently no promotion active.keep checking back here for any new promotions.",
                    style: TextStyle(
                      fontSize:12,
                    ),
                    ),
                ),
              ),
             ),
          ],
        ),
      ),
    );
  }
}