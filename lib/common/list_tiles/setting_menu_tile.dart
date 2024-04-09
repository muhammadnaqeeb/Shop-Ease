import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/colors.dart';

class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trailling,
      this.onTap});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailling;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: TColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailling,
      onTap: onTap,
    );
  }
}
