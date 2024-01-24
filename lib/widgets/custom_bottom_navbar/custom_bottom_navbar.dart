import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter_app/routes/route_constants.dart';
import 'package:go_router_flutter_app/widgets/custom_bottom_navbar/custom_navbar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomNavBarItem(
            text: "Home",
            iconData: Icons.home_outlined,
            onTap: () => context.goNamed(RouteConstants.home),
          ),
          CustomNavBarItem(
            text: "Bookmark",
            iconData: Icons.bookmark_outline,
            onTap: () => context.goNamed(RouteConstants.bookmarker),
          ),
          InkWell(
            onTap: () => context.goNamed(RouteConstants.bookmarker),
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
              size: 52,
            ),
          ),
          CustomNavBarItem(
            text: "Message",
            iconData: Icons.message_outlined,
            onTap: () => context.goNamed(RouteConstants.chats),
          ),
          CustomNavBarItem(
            text: "Account",
            iconData: Icons.account_circle_sharp,
            onTap: () => context.goNamed(RouteConstants.account),
          ),
        ],
      ),
    );
  }
}
