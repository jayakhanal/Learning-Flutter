import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> {
  bool shouldChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated.Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: shouldChange ? 600 : 200,
              height: shouldChange ? 800 : 300,
              decoration: BoxDecoration(
                color: shouldChange ? Colors.red : Colors.green,
                borderRadius: shouldChange
                    ? BorderRadius.circular(4)
                    : BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.red,
              child: AnimatedPadding(
                duration: const Duration(seconds: 1),
                curve: Curves.bounceInOut,
                padding: EdgeInsets.all(shouldChange ? 100 : 10),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: shouldChange ? 0.3 : 1,
                  child: Container(
                    height: 400,
                    width: 400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.yellow,
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 1),
                  bottom: shouldChange ? 300 : 0,
                  right: shouldChange ? 300 : 0,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            shouldChange = !shouldChange;
          });
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
