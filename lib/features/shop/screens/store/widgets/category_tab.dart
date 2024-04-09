import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/brands/brand_show_case.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_verticle.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 10),
          child: Column(
            children: [
              // brand
              const TBrandShowcase(
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),

              //---products
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TMainGridLayout(
                itemBuilder: (_, index) => const TProductCardVertical(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
