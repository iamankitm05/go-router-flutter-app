import 'package:flutter/material.dart';
import 'package:go_router_flutter_app/models/user_model.dart';

class TodoDetailedScreen extends StatelessWidget {
  final User user;

  const TodoDetailedScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    const boldTextStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 15,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        color: Colors.deepPurple.withOpacity(0.5),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                user.avtarUrl,
                width: 160,
                height: 160,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Name: ", style: boldTextStyle),
                Text(user.name),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("User Type: ", style: boldTextStyle),
                Text(user.userType),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Site Admin: ", style: boldTextStyle),
                Text(user.siteAdmin ? "Yes" : "No"),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
