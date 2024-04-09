import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/layout/t_grid_layout.dart';
import 'package:shopease/common/widgets/products/product_card/product_card_verticle.dart';
import 'package:shopease/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Iconsax.add))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace)
            .copyWith(bottom: 0, top: 8),
        child: SingleChildScrollView(
          child: TMainGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const TProductCardVertical(),
          ),
        ),
      ),
    );
  }
}
