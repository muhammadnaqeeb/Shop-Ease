import 'package:flutter/material.dart';
import 'package:shopease/features/authentication/controller/onboarding_controller.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace - 15,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip"),
        ));
  }
}
