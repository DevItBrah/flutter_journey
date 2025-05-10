import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/common/widgets/products/products_cards/product_cart_horizontal.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title:Text(
          'Sports shirts',
        ),showBackArrow:true
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(width: double.infinity,imageUrl: TImages.promoBanner1,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              Column(
                children: [
                  const TSectionHeading(title: 'Sport shirts'),
                  const SizedBox(height: TSizes.spaceBtwSections/2),
                  SizedBox(height: 120 ,
                    child: ListView.separated(
                        itemCount:4,
                        scrollDirection:Axis.horizontal,
                        separatorBuilder:(context,index)=> const SizedBox(width: TSizes.spaceBtwItem,),
                        itemBuilder:(context,index)=> const TProductCardHorizontal()),
                  ),
                    ],
                  )
                ],
              )
          ),
        ),
      );

  }
}
