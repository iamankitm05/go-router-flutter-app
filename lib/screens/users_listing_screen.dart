import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter_app/data.dart';
import 'package:go_router_flutter_app/models/user_model.dart';

class UsersListingScreen extends StatelessWidget {
  const UsersListingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users List"),
      ),
      body: Container(
        color: Colors.deepPurple.withOpacity(0.5),
        child: ListView.builder(
          itemCount: usersData.length,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          itemBuilder: (context, index) {
            final User user = usersData[index];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: const EdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(6),
              ),
              child: ListTile(
                onTap: () => context.goNamed("user_detailed",
                    pathParameters: {"userId": user.id.toString()}),
                tileColor: Colors.white,
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: ClipOval(
                  child: Image.network(
                    user.avtarUrl,
                    width: 48,
                    height: 48,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red[900],
                  ),
                ),
                title: Text(user.name),
                subtitle: Text(user.userType),
              ),
            );
          },
        ),
      ),
    );
  }
}
