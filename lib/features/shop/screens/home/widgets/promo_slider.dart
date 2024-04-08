import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/features/shop/controller/home_controller.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: const [
            TRounderImageBanner(imageUrl: TImages.promoBanner1),
            TRounderImageBanner(imageUrl: TImages.promoBanner2),
            TRounderImageBanner(imageUrl: TImages.promoBanner3),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                homeController.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i <= 2; i++)
              Obx(
                () => TCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor:
                      homeController.carouselCurrentIndex.value == i
                          ? TColors.primary
                          : TColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
              )
          ],
        )
      ],
    );
  }
}
