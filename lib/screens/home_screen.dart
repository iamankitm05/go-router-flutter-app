import 'package:flutter/material.dart';
import 'package:go_router_flutter_app/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurple.withOpacity(0.5),
        child: Wrap(children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            color: Colors.deepOrange,
          ),
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            color: Colors.deepOrange,
          ),
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            color: Colors.deepOrange,
          ),
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.all(8),
            color: Colors.deepOrange,
          ),
        ]),
      ),
    );
  }
}
