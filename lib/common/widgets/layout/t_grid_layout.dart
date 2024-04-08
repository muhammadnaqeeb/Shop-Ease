import 'package:flutter/material.dart';
import 'package:shopease/utils/constants/sizes.dart';

class TMainGridLayout extends StatelessWidget {
  final int itemCount;
  final double mainAxisExtend;
  final Widget? Function(BuildContext, int) itemBuilder;

  const TMainGridLayout({
    super.key,
    this.itemCount = 4,
    this.mainAxisExtend = 270,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing / 2,
          crossAxisSpacing: TSizes.gridViewSpacing / 2,
          mainAxisExtent: mainAxisExtend),
      itemBuilder: itemBuilder,
    );
  }
}
