import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/products/cart/coupon_widget.dart';
import 'package:shopease/common/widgets/rounded_container/t_rounded_container.dart';
import 'package:shopease/common/widgets/success_screen/success_screen.dart';
import 'package:shopease/features/shop/screens/cart/widgets/cart_item_whole.dart';
import 'package:shopease/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:shopease/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:shopease/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shopease/navigation_menu.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          title: Text("Order Review",
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TCartItemWhole(showAddRemoveButtons: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///--- Coupon TextField
            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///---Billing Section
            TRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: isDark ? TColors.black : TColors.white,
              child: const Column(
                children: [
                  /// Pricing
                  TBillingAmountSection(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Divider
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Payment Methods
                  TBillingPaymentSection(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// Address
                  TBillingAddressSection(),
                  SizedBox(height: TSizes.spaceBtwItems),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace).copyWith(top: 5),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SuccessScreen(
                          image: TImages.successfulPaymentIcon,
                          title: "Payment Success",
                          subTitle: "Your item will be shipped soon",
                          onPressed: () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavigationMenu()),
                              (route) => false),
                        )));
          },
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
