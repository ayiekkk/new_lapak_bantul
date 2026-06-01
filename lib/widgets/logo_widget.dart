import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class LogoWidget extends StatelessWidget {
  final double size;
  final bool darkBackground;

  const LogoWidget({
    super.key,
    this.size = 80,
    this.darkBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size * 0.2),
        boxShadow: [
          BoxShadow(
            color: darkBackground
                ? AppColors.accentGold.withOpacity(0.3)
                : Colors.black.withOpacity(0.1),
            blurRadius: size * 0.3,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size * 0.2),
        child: Image.asset(
          'assets/image/logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}