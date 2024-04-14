import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/brands/brand_card.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/shop/screens/brand/brand_products.dart';
import 'package:shopease/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text("Brand"), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          const TSectionHeading(title: "Brands", showActionButton: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          TMainGridLayout(
            itemCount: 10,
            mainAxisExtend: 80,
            itemBuilder: (_, index) => TBrandCard(
              showBorder: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BrandProducts(),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
