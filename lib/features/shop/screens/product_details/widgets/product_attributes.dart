import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/chips/t_choice_chip.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/common/widgets/texts/product_title_text.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/common/widgets/texts/t_price_text.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///--- Selected Attributes price & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: "Variation", showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Actual Price
                      Row(
                        children: [
                          const TProductTitleText(
                              title: "Price: ", smallSize: true),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          const TPriceText(price: "20")
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                              title: "Stock: ", smallSize: true),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),

              ///--- variation Description
              const SizedBox(height: TSizes.sm),
              const TProductTitleText(
                title:
                    "This is the description of the product and it can go upto 4 lines",
                smallSize: true,
                maxLine: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        ///---Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: "Green",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Blue",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Yellow",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Sizes", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: "EU 34",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "EU 36",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "EU 38",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
