import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/utils/constants/colors.dart';

class TRatingStarIndicator extends StatelessWidget {
  const TRatingStarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1,
        color: TColors.primary,
      ),
      unratedColor: TColors.grey,
      itemCount: 5,
      itemSize: 20.0,
    );
  }
}
