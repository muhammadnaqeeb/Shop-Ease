import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.text,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });
  final String text;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSizes == TextSizes.large
                ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color));
  }
}
