import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/utils/constants/colors.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: TColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: TColors.grey, fontSizeFactor: 0.8),
            )),
          ),
        )
      ],
    );
  }
}
