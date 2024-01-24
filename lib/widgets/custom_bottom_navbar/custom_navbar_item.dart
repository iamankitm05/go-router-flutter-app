import 'package:flutter/material.dart';

class CustomNavBarItem extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback? onTap;

  const CustomNavBarItem({
    super.key,
    required this.text,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            color: Colors.white,
            size: 24,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 9,
          ),
        )
      ],
    );
  }
}
