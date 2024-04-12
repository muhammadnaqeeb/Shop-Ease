import 'package:flutter/material.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/products/ratings/rating_star_indicator.dart';
import 'package:shopease/features/shop/screens/product_reviews/widgets/rating_with_progress_indicator.dart';
import 'package:shopease/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopease/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const TAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TOverallProductRating(),
              const TRatingStarIndicator(rating: 3.5),
              Text("12611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///---User Review List
              const UserReviewCard(),

              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
