import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/brands/brand_card.dart';
import 'package:shopease/common/widgets/sortable/sortable_products.dart';
import 'package:shopease/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text("Nike"), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TBrandCard(showBorder: true),
            SizedBox(height: TSizes.spaceBtwItems),
            TSortableProducts(),
          ],
        ),
      ),
    );
  }
}
