import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/sizes.dart';

class TRounderImage extends StatelessWidget {
  const TRounderImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.padding = const EdgeInsets.all(TSizes.xs),
    this.onPressed,
    this.isNetworkImage = false,
    this.color,
    this.backgroundColor,
    this.border,
  });
  final Color? backgroundColor;
  final double? width, height;
  final String imageUrl;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final bool isNetworkImage;
  final Color? color;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(TSizes.md),
            color: backgroundColor),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(TSizes.md),
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(
                    imageUrl,
                  ) as ImageProvider,
            fit: BoxFit.contain,
            color: color,
          ),
        ),
      ),
    );
  }
}
