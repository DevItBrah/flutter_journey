import 'dart:convert';

import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_details_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/products_attributs.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
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
                 // TRatingAndShare(),
                TProductMetaData(),
                //attributes
                TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections,),
                //checkh out button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout')),),
                const TSectionHeading(title: 'Description'),
                const SizedBox(height:TSizes.spaceBtwItem),
                ReadMoreText(
                  'This is a product description for blue nike sleeve less vest.',
                  trimLines:2,
                  trimMode:TrimMode.Line,
                  trimCollapsedText:'Show more',
                  trimExpandedText:'Less',
                  moreStyle:const TextStyle(fontSize:14, fontWeight:FontWeight.w800),
                  lessStyle:const TextStyle(fontSize:14, fontWeight:FontWeight.w800),
                ),
                const Divider(),
                const SizedBox(height:TSizes.spaceBtwItem),
                TSectionHeading(title: 'Reviews(199',showActionButton: false),
                IconButton(icon:const Icon(Iconsax.arrow_right_3,size:18),onPressed:(){}),
                const SizedBox(height: TSizes.spaceBtwSections,)
              ],
            ))
          ],
        ),
      ),
    );
  }
}




