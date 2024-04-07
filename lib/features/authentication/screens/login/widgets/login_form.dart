import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopease/utils/constants/sizes.dart';
import 'package:shopease/utils/constants/text_strings.dart';
import 'package:shopease/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(bottom: TSizes.sm, top: TSizes.md),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
              validator: (value) => TValidator.validateEmail(value),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
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
            ),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (v) {}),
                    const Text(TTexts.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(height: TSizes.sm),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(TTexts.signIn),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(TTexts.forgetPassword))),
            const SizedBox(height: TSizes.sm),
          ],
        ),
      ),
    );
  }
}
