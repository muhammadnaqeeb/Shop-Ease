import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_verticle.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/shop/screens/all_products/all_products.dart';
import 'package:shopease/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopease/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopease/features/shop/screens/home/widgets/t_home_categories.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  // searchbar
                  TSearchContainer(text: "Search in store"),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections * 1.5),
                ],
              ),
            ),
            // banner
            const TPromoSlider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
              child: TSectionHeading(
                  title: "Popular Products",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllProducts(),
                        ));
                  }),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
              child: TMainGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const TProductCardVertical();
                },
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
