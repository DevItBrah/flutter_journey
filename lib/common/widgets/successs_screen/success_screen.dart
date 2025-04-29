import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, this.String, this.image, this.title, this.subTitle, required this.onPressed});

  final String,image,title,subTitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight*2,
        child:Column(
          children: [
            Image(image: AssetImage(image),width:THelperFunctions.screenWidth()*0.6),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(title,style:Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(subTitle,style:Theme.of(context).textTheme.labelMedium,textAlign:TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(width:double.infinity, child:ElevatedButton(onPressed: (){},child:const Text(TTexts.tContinue),))

          ],
        )
      )
    );
  }
}
