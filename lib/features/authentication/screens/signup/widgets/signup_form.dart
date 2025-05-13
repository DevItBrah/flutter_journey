import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../signup_controller.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(SignupController());

    return Form(
      key:controller.signupFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller:controller.firstName,
                  validator: (value)=>TValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value)=>TValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastname,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
          TextFormField(
            controller: controller.username,
            validator: (value)=>TValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
          TextFormField(
            controller: controller.email,
            validator: (value)=>TValidator.validateEmail(value),

            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value)=>TValidator.validatePhoneNumber(value),

            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
          Obx(()=>
            TextFormField(
              controller:controller.password,
              validator: (value)=>TValidator.validatePassword(value),
              obscureText:controller.hidepassword.value,
              expands: false,
              decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: const Icon(Iconsax.eye_slash),
                suffixIcon:IconButton(
                  onPressed: ()=>controller.hidepassword.value=!controller.hidepassword.value,
                  icon:Icon(controller.hidepassword.value? Iconsax.eye_slash:Iconsax.eye),
                )
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField),
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwInputField),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
