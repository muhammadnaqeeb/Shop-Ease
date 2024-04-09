import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/features/personalization/screens/profile/profile_screen.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TRounderImage(
        imageUrl: TImages.user,
        width: 50,
        height: 50,
        padding: EdgeInsets.all(0),
      ),
      title: Text("Muhammad Naqeeb",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)
              .copyWith(fontSize: 17)),
      subtitle: Text("mnaqeeb512@gmail.com",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: IconButton(
        onPressed: () {
          // on click -> profile screen
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ));
        },
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
