import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopease/common/widgets/login_signup/tform_divider.dart';
import 'package:shopease/common/widgets/login_signup/tsocial_button.dart';
import 'package:shopease/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? TColors.black : TColors.white,
        iconTheme: IconThemeData(color: isDark ? TColors.white : TColors.black),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(
          TSizes.defaultSpace,
        ).copyWith(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.sm),
            Text(
              "Start shopping in minutes: Create your account now!",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Form
            const SignupForm(),
            const SizedBox(height: TSizes.spaceBtwSections),

            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
            const SizedBox(height: TSizes.spaceBtwSections),

            const TSocialButtons()
          ],
        ),
      )),
    );
  }
}
