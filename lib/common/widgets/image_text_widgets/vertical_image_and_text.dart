import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TVerticalImageAndText extends StatelessWidget {
  const TVerticalImageAndText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor,
    this.onTap,
  });
  final String image, title;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 56,
            height: 56,
            margin: const EdgeInsets.only(right: TSizes.spaceBtwItems),
            padding: const EdgeInsets.all(TSizes.sm),
            decoration: BoxDecoration(
              color:
                  backgroundColor ?? (isDark ? TColors.black : TColors.white),
              borderRadius: BorderRadius.circular(56),
            ),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: isDark ? TColors.light : TColors.dark,
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        SizedBox(
          width: 55,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
