import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/t_images/t_rounded_images.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopease/utils/constants/image_strings.dart';
import 'package:shopease/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text("Profile")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///---profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TRounderImage(
                    imageUrl: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Change profile picture"))
                ],
              ),
            ),

            ///---Details
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TSectionHeading(
                title: "Profile Information", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(
              title: "Name",
              value: "Muhammad Naeeb",
              onPressed: () {},
            ),
            TProfileMenu(
              title: "Username",
              value: "muhammadnaqeeb",
              onPressed: () {},
            ),

            ///---Profile Information
            const SizedBox(height: TSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TSectionHeading(
                title: "Personal Information", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),

            TProfileMenu(
              title: "User ID",
              value: "57698",
              icon: Iconsax.copy,
              onPressed: () {},
            ),
            TProfileMenu(
              title: "E-mail",
              value: "mnaqeeb512@gmail.com",
              onPressed: () {},
            ),
            TProfileMenu(
              title: "Phone No.",
              value: "+92 310 1234567",
              onPressed: () {},
            ),
            TProfileMenu(
              title: "Gender",
              value: "Male",
              onPressed: () {},
            ),
            TProfileMenu(
              title: "Date of Birth",
              value: "10 Oct, 2000",
              onPressed: () {},
            ),
            const Divider(),
            const SizedBox(height: TSizes.sm),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Close Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
