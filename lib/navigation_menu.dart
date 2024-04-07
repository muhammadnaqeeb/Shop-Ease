import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/features/shop/screens/home/home_screen.dart';
import 'package:shopease/utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  static String route = "main";
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationControllerGetx = Get.put(NavigationControllerGetx());
    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: navigationControllerGetx.selectedIndex.value,
            onDestinationSelected: (index) =>
                navigationControllerGetx.changeSelectedIndex(index),
            // dart mode is working without this
            // backgroundColor: isDark ? TColors.black : Colors.white,
            // indicatorColor: isDark
            //     ? TColors.white.withOpacity(0.2)
            //     : TColors.black.withOpacity(0.1),
            indicatorColor: TColors.primary.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
          ),
        ),
        body: Obx(
          () => navigationControllerGetx
              .screens[navigationControllerGetx.selectedIndex.value],
        ));
  }
}

class NavigationControllerGetx extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];

  changeSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
