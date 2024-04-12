import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopease/common/widgets/products/cart/cart_item.dart';
import 'package:shopease/common/widgets/texts/t_price_text.dart';
import 'package:shopease/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          title:
              Text("Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace)
            .copyWith(bottom: 0, top: 5),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          itemCount: 9,
          itemBuilder: (_, index) => const Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 5),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
