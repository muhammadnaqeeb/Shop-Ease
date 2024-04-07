import 'package:flutter/material.dart';
import 'package:shopease/common/styles/spacing_style.dart';
import 'package:shopease/common/widgets/login_signup/tform_divider.dart';
import 'package:shopease/common/widgets/login_signup/tsocial_button.dart';
import 'package:shopease/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shopease/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  static String route = "login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo, title $ sub-title
              LoginHeader(),

              /// Form
              LoginForm(),
              SizedBox(height: TSizes.spaceBtwInputFields / 2),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith),
              SizedBox(height: TSizes.md),
              TSocialButtons(),
              SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
