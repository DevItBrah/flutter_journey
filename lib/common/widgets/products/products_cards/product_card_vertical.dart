import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/styles/shadows.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/rounded_container.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override

  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [
            TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey
              : TColors.white

        ),
      child: Column(
        children: [

           TRoundedContainer(
            height:180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor:dark? TColors.dark:TColors.light,
             child: Stack(
              children: [
                TRoundedImage(imageUrl: 'assets/images/category/banner1.jpg',)
              ],
             ),
          ),
        ],
      ),
    );
  }
}


