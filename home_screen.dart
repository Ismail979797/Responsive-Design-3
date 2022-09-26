import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, Constraints) {
          if (Constraints.maxWidth < 800) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            );
          } else if (Constraints.maxWidth < 480 && Constraints.maxWidth > 800) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.red,
            );
          } else {
            return Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            );
          }
        },
      ),
    );
  }
}
