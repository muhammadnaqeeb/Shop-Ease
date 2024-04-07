import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/utils/constants/colors.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';
import 'package:shopease/utils/helpers/helper_functions.dart';
import 'package:shopease/utils/validators/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                labelText: "Name",
              ),
              validator: (value) {}),
          const SizedBox(height: TSizes.sm),
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: TTexts.username,
              ),
              validator: (value) {}),
          const SizedBox(height: TSizes.sm),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TTexts.email,
            ),
            validator: (value) => TValidator.validateEmail(value),
          ),
          const SizedBox(height: TSizes.sm),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
            validator: (value) => TValidator.validatePhoneNumber(value),
          ),
          const SizedBox(height: TSizes.sm),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.eye,
                ),
              ),
              labelText: TTexts.password,
            ),
            validator: (value) => TValidator.validatePassword(value),
          ),
          const SizedBox(height: TSizes.sm),
          Row(
            children: [
              Checkbox(value: true, onChanged: (v) {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: '${TTexts.privacyPolicy} ',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            decoration: TextDecoration.underline,
                            color: isDark ? TColors.white : TColors.primary)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: TSizes.sm),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
