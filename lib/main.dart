import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter_app/data.dart';
import 'package:go_router_flutter_app/models/user_model.dart';
import 'package:go_router_flutter_app/screens/user_detailed_screen.dart';
import 'package:go_router_flutter_app/screens/users_listing_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "go router navigation app",
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        appBarTheme: const AppBarTheme(color: Colors.deepPurple),
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            name: "users_lists",
            path: "/",
            builder: (context, state) {
              return const UsersListingScreen();
            },
            routes: [
              GoRoute(
                name: "user_detailed",
                path: ":userId",
                builder: (context, state) {
                  final User user = usersData.firstWhere((element) =>
                      element.id.toString() == state.pathParameters["userId"]);
                  return TodoDetailedScreen(
                    user: user,
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
