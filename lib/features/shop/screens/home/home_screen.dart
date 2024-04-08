// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:shopease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopease/features/shop/screens/home/widgets/t_home_categories.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
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
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
