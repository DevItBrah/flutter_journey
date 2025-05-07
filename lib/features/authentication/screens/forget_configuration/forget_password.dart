import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/features/authentication/screens/forget_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding:const EdgeInsets.all(TSizes.defaultSpace),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.forgetPasswordTitle,style:Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItem,),
            Text(TTexts.forgetPasswordSubTitle, style:Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwItem *2,),
            TextFormField(
              decoration:const InputDecoration(
                labelText:TTexts.email,prefixIcon:Icon(Iconsax.direct_right)
              )
            ),
            const SizedBox(height: TSizes.spaceBtwItem *2,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=>const ResetPassword()), child: const Text(TTexts.submit)),)
          ],
        )
      ),
    );
  }
}
