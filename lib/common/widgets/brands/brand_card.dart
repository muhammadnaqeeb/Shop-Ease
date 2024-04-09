import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/common/widgets/texts/t_brand_title_text_with_verification.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/enums.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(children: [
          //  icon
          // flexible take space is required for image to appear
          Flexible(
            child: TRounderImage(
              width: 56,
              height: 56,
              imageUrl: TImages.nikeLogo,
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.dark,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          // Text
          // expanded will take maximum space
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleTextWithVerification(
                  title: "Nike",
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  "256 products",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
