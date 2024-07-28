import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon, this.onTap,
  });
  final VoidCallback? onTap;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        right: 16.0,
        left: 16.0,
      ),
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
          ),
        ),
        CustomIcon(icon: icon, onTap: onTap,),
      ],
    ));
  }
}

