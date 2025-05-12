import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup_controller.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import '../../../../utils/constants/sizes.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSignupForm(dark: dark),
            const SizedBox(height: TSizes.spaceBtwInputField),
            //divider
            TFormDivider(dividerText: TTexts.orSignInWtih.capitalize!),
              const SizedBox(height: TSizes.spaceBtwInputField),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


