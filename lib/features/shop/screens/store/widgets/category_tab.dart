import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/brands/brand_show_case.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 10),
      child: const Column(
        children: [
          // brand
          TBrandShowcase(
            images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],
          ),
        ],
      ),
    );
  }
}
