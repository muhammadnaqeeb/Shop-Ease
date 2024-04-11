import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/common/widgets/texts/product_title_text.dart';
import 'package:shopease/common/widgets/texts/t_brand_title_text_with_verification.dart';
import 'package:shopease/common/widgets/texts/t_price_text.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/enums.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary,
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TPriceText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.xs),
        const TProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(height: TSizes.xs),

        ///---stock status
        Row(
          children: [
            const TProductTitleText(title: "Status"),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///---Brand
        Row(
          children: [
            TRounderImage(
              imageUrl: TImages.shoeIcon,
              width: 32,
              height: 32,
              color: isDark ? TColors.white : TColors.black,
            ),
            const TBrandTitleTextWithVerification(
                title: "Nike", brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
