import 'package:flutter/material.dart';

class DashboardFoodCart extends StatelessWidget {
  const DashboardFoodCart({super.key,required this.imageUrl,required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
           child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
          

            child: Image.network(
              imageUrl,
          
              fit: BoxFit.cover,
            ),
           ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
    }
  }