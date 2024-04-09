import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/brands/brand_card.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          // Brand Top 3 product images
          Row(
            children: images
                .map((image) => brandTopProductImageMethod(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Expanded brandTopProductImageMethod(String image, BuildContext context) {
    return Expanded(
      child: TRoundedContainer(
        height: 80,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.sm),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
