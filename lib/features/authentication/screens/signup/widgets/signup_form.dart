import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputField),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField),
            const TTermsAndConditionCheckbox(),
            const SizedBox(height: TSizes.spaceBtwInputField,),
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>  Get.to(()=>const VerifyEmailScreen()), child: const Text(TTexts.createAccount)),)
          ]),
    );
  }
}

