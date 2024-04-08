import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxLine;
  final TextAlign? textAlign;

  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLine = 1,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: textAlign,
    );
  }
}
