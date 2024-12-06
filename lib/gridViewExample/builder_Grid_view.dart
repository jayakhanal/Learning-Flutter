import 'package:flutter/material.dart';

class BuilderGridView extends StatelessWidget {
  const BuilderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(  "Grid View Builder Example"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20, // Define the number of items you want in the grid
        itemBuilder: (ctx, index) {
          return Container(
            color: Colors.teal,
            child: Center(
              child: Text(
                "Index=${index + 1}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Floating Action Button Pressed")),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
