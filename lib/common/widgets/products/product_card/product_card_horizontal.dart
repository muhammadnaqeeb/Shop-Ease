import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/icons/t_circular_icon.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/common/widgets/texts/product_title_text.dart';
import 'package:shopease/common/widgets/texts/t_brand_title_text_with_verification.dart';
import 'package:shopease/common/widgets/texts/t_price_text.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? TColors.darkerGrey : TColors.lightContainer,
      ),
      child: Row(children: [
        ///---Thumbnail
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: isDark ? TColors.dark : TColors.white,
          child: Stack(
            //Thumbnail image
            children: [
              const SizedBox(
                height: 120,
                width: 120,
                child: TRounderImage(
                  imageUrl: TImages.productImage1,
                ),
              ),
              // Sale Tag
              Positioned(
                top: 6,
                child: TRoundedContainer(
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
              ),
              // favourite icon button
              const Positioned(
                top: 0,
                right: 0,
                child: TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),

        /// Details
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: TSizes.sm),
                      child: TProductTitleText(
                          title: "Green Nike half sleves shoes",
                          smallSize: true),
                    ),
                    SizedBox(height: TSizes.sm),
                    TBrandTitleTextWithVerification(title: "Nike")
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // pricing
                    const Flexible(child: TPriceText(price: "358.0")),
                    // add to cart
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                      child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Icon(
                          Iconsax.add,
                          color: TColors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
