import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/dashboard/fresh%20vegetable/fresh_vegetable.dart';
import 'package:flutter_application_1/modules/dashboard/lookingFor%20widget/looking_for_widget_page.dart';
import 'package:flutter_application_1/modules/dashboard/promos/promos_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 244, 230),
      appBar: AppBar(
        leading: const Icon(Icons.shopping_cart),
        title: const Text(
          "Sabji Mandi Nepal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              // Handle menu action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LookingForWidgetPage(), 
            const SizedBox(height: 10),
            const PromosCard(), 
            const Text(
              "Fresh Vegetable",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            const FreshVegetable(), 
          ],
        ),
      ),
    );
  }
}
