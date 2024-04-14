import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_verticle.dart';
import 'package:shopease/utils/constants/sizes.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
