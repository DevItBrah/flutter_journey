import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../common/widgets/texts/product_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title:Text('Cart',style:Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(

        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder:(_,__)=>const SizedBox(height: TSizes.spaceBtwSections,),
          itemCount: 4,
          itemBuilder:(_,index)=> Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItem,),
              Row(
                children: [
                  const SizedBox(width: 70,),
                  TCircularIcon(
                    icon:Iconsax.minus,
                    width:32,
                    height: 32,
                      size:TSizes.md,
                    color:THelperFunctions.isDarkMode(context)?TColors.white:TColors.black,
                    backgroundColor:THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItem,),
                  Text('2',style:Theme.of(context).textTheme.titleSmall),
                  const SizedBox(width:TSizes.spaceBtwItem),
                  TCircularIcon(
                    icon:Iconsax.add,
                    width:32,
                    height: 32,
                    size:TSizes.md,
                    color:TColors.white,
                    backgroundColor:TColors.primary,
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


