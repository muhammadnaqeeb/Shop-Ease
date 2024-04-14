import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/t_tabar.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shopease/common/widgets/brands/brand_card.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/shop/screens/brand/all_brands.dart';
import 'package:shopease/features/shop/screens/store/widgets/category_tab.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // lenght: numbers of tabars
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCardCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.dark
                    : TColors.white,
                expandedHeight: 390,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  // we cannot use column as it have unbounded height
                  // using listview with shrinkwrap = true
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const TSearchContainer(
                        text: "Search in store",
                        showBorder: true,
                        showBackground: false,
                        margin: EdgeInsets.all(0),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      // Feature brands
                      TSectionHeading(
                        title: "Feature brands",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllBrandsScreen(),
                              ));
                        },
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TMainGridLayout(
                        itemCount: 4,
                        mainAxisExtend: 72,
                        itemBuilder: (_, index) {
                          return const TBrandCard(
                            showBorder: true,
                          );
                        },
                      )
                    ],
                  ),
                ),

                /// ---Tabs
                bottom: const TTabar(tabs: [
                  Tab(child: Text("Sports")),
                  Tab(child: Text("Furnitures")),
                  Tab(child: Text("Electronics")),
                  Tab(child: Text("Cloths")),
                  Tab(child: Text("Cosmatices")),
                ]),
              )
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
