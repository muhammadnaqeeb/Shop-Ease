import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/features/shop/screens/order/widgets/order_list.dart';
import 'package:shopease/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text("My Orders", style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace)
            .copyWith(top: 5, bottom: 0),
        child: const TOrderListItems(),
      ),
    );
  }
}
