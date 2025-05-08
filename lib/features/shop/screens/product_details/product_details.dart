import 'package:e_commerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image Slilder
            TProductImageSlider(),
            Padding(
            padding:EdgeInsets.only(right:TSizes.defaultSpace,left:TSizes.defaultSpace,bottom:TSizes.defaultSpace),
            child:Column(
              children: [
                 ///Rating & share
                 // TRatingAndShare()
              ],
            ))
          ],
        ),
      ),
    );
  }
}




