import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/features/shop/screens/cart/widgets/cart_item_whole.dart';
import 'package:shopease/features/shop/screens/checkout/checkout_screen.dart';
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
        child: const TCartItemWhole(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 5),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CheckoutScreen()));
          },
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
