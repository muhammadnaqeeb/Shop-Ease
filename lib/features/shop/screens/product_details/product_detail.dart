import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/shop/screens/product_details/widgets/botton_add_to_card_widget.dart';
import 'package:shopease/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:shopease/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopease/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopease/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:shopease/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCard(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ///--- Product Image Slider
          const TProductImageSlider(),

          ///--- Product Details
          Padding(
            padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                ///---Rating & share
                TRatingAndShare(),

                ///---price, title, stock & brand
                TProductMetaData(),

                ///---Attributes
                TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///---checkout button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Checkout"))),

                ///---Description
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(
                  title: "Description",
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  "This is product description for Nike Sleeve less vest, This is product description for Nike Sleeve less vest,This is product description for Nike Sleeve less vest",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "  Show more",
                  trimExpandedText: "  Less",
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                ///---Reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(
                      title: "Reviews(199)",
                      showActionButton: false,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ))
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
