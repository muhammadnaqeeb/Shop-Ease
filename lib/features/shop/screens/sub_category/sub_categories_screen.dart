import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // banner
            const TRounderImage(
                width: double.infinity, imageUrl: TImages.promoBanner3),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// sub-category
            Column(
              children: [
                TSectionHeading(
                  title: "Sports Shirts",
                  onPressed: () {},
                ),
                const SizedBox(height: TSizes.sm),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const TProductCardHorizontal();
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
