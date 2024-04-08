import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width = 40,
    this.height = 40,
    this.size = 22,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ??
            (isDark
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
