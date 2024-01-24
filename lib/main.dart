import 'package:flutter/material.dart';
import 'package:go_router_flutter_app/routes/app_router.dart';

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
      routerConfig: AppRouter().router,
    ); 
  }
}
