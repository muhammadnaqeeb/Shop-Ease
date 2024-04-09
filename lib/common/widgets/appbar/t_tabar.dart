import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/device/device_utility.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TTabar extends StatelessWidget implements PreferredSizeWidget {
  const TTabar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: isDark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
