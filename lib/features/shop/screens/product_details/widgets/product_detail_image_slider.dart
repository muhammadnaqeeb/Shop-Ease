import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopease/common/widgets/icons/t_circular_icon.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// ---Main large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    height: 400,
                    image: AssetImage(TImages.productImage1),
                  ),
                ),
              ),
            ),

            ///---Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) => TRounderImage(
                          imageUrl: TImages.productImage3,
                          padding: const EdgeInsets.all(TSizes.sm),
                          width: 80,
                          border: Border.all(color: TColors.primary),
                          backgroundColor:
                              isDark ? TColors.dark : TColors.white,
                        ),
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: TSizes.spaceBtwItems),
                    itemCount: 5),
              ),
            ),
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
