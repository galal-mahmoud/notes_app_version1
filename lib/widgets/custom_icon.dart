import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,  this.onTap,
  });

  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
          height: 48.0,
          width: 48.0,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadiusDirectional.circular(16.0),
      ),
      child: Center(
        child: Icon(icon,),
      ),
    ));
  }
}
