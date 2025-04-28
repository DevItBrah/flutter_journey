import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
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
                SizedBox(width: TSizes.spaceBtwInputField),
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
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(value: true, onChanged: (value) {}),
                ),
                SizedBox(width: 10),
                Text.rich(
                    TextSpan(children:[
                      TextSpan(text:'${TTexts.iAgreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text:'${TTexts.privacyPolicy} ',style: Theme.of(context).textTheme.bodySmall!.apply(
                        color:dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      )),
                      TextSpan(text:'${TTexts.and} ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text:'${TTexts.termsOfUse} ',style: Theme.of(context).textTheme.bodySmall!.apply(
                        color:dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      )),
                    ])
                ),

              ],
            ),
            const SizedBox(height: TSizes.spaceBtwInputField,),
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text(TTexts.createAccount)),)
          ]),
    );
  }
}