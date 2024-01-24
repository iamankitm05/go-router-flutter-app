import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter_app/routes/route_constants.dart';
import 'package:go_router_flutter_app/screens/account_screen.dart';
import 'package:go_router_flutter_app/screens/bookmarker_screen.dart';
import 'package:go_router_flutter_app/screens/home_screen.dart';
import 'package:go_router_flutter_app/screens/message_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteConstants.home,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.account,
        path: '/account',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AccountScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.chats,
        path: '/chats',
        pageBuilder: (context, state) {
          return const MaterialPage(child: MessageScreen());
        },
      ),
      GoRoute(
        name: RouteConstants.bookmarker,
        path: '/bookmarker',
        pageBuilder: (context, state) {
          return const MaterialPage(child: BookMarkerScreen());
        },
      ),
    ],
    redirect: (context, state) async {
      bool isAuthenticated = false & true;
      if(isAuthenticated) {
        return state.namedLocation(RouteConstants.account);
      }

      return null;
    },
  );
}
