import 'package:flutter/material.dart';
import 'package:go_router_flutter_app/widgets/custom_bottom_navbar/custom_bottom_navbar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Screen"),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Container(
        color: Colors.deepOrange,
      ),
    );
  }
}
