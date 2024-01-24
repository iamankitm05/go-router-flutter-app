import 'package:flutter/material.dart';
import 'package:go_router_flutter_app/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages Screen"),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}
