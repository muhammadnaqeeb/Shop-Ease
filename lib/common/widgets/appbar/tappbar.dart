import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/device/device_utility.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPresseed,
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPresseed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isDark ? TColors.white : TColors.dark,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPresseed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
