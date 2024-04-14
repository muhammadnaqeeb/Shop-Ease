import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_verticle.dart';
import 'package:shopease/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Popular Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///---Dropdown
            DropdownButtonFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              items: [
                "Name",
                "Higher Price",
                "Lower Price",
                "Sale",
                "Newest",
                "Popularity"
              ]
                  .map((option) =>
                      DropdownMenuItem(value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {},
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///---products
            TMainGridLayout(
              itemBuilder: (_, index) => const TProductCardVertical(),
            )
          ],
        ),
      ),
    );
  }
}
