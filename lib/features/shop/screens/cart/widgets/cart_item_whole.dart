import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopease/common/widgets/products/cart/cart_item.dart';
import 'package:shopease/common/widgets/texts/t_price_text.dart';
import 'package:shopease/utils/constants/sizes.dart';

class TCartItemWhole extends StatelessWidget {
  const TCartItemWhole({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddRemove(),
                  ],
                ),
                TPriceText(price: "256")
              ],
            )
        ],
      ),
    );
  }
}
