import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/common/list_tiles/setting_menu_tile.dart';
import 'package:shopease/common/list_tiles/user_profile_tile.dart';
import 'package:shopease/common/widgets/appbar/tappbar.dart';
import 'package:shopease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopease/common/widgets/texts/section_heading.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              TAppBar(
                title: Text("Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white)),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // user profile card
              const TUserProfileTile(),
              const SizedBox(height: TSizes.spaceBtwItems * 2),
            ],
          )),
          // ---body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///---Account Settings
                const TSectionHeading(
                    title: "Account Settings", showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "My Shoping delivery address"),

                const TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add and remove products"),

                const TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In progress and completed Orders"),

                const TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Your bank account"),

                const TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all discounts"),

                const TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subTitle: "Set any kind of notification"),

                const TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage"),

                ///---App Setting
                const SizedBox(height: TSizes.spaceBtwSections),
                const TSectionHeading(
                    title: "App Settings", showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const TSettingMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subTitle: "Upload dataa to your cloud firestore"),

                TSettingMenuTile(
                  icon: Iconsax.location,
                  title: "Geo Location",
                  subTitle: "Set recommendation based on your location",
                  trailling: Switch(value: true, onChanged: (value) {}),
                ),

                TSettingMenuTile(
                  icon: Iconsax.security_user,
                  title: "Safe Mode",
                  subTitle: "Search result in safe for all ages",
                  trailling: Switch(value: false, onChanged: (value) {}),
                ),

                TSettingMenuTile(
                  icon: Iconsax.location,
                  title: "HD image quality",
                  subTitle: "Set image quality",
                  trailling: Switch(value: false, onChanged: (value) {}),
                ),

                ///----Logout button
                const SizedBox(height: TSizes.spaceBtwItems),

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Logout")))
              ],
            ),
          )
        ],
      )),
    );
  }
}
