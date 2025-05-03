import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/common/widgets/products/cart_menu_icon.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/rounded_container.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text/TCircularImage.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:TAppBar(
        title: Text('Store',style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
            TCartCounterIcon(onPressed: (){}, iconColor: TColors.dark,)
        ],
      ),
      body:NestedScrollView(headerSliverBuilder:(_,innerBoxScrolled){
        return[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned:true,
            floating:true,
            backgroundColor: THelperFunctions.isDarkMode(context)? TColors.black:TColors.white,
            expandedHeight: 440,
            flexibleSpace:Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: TSizes.spaceBtwItem,),
                  const TSearchContainer(text:'Search  in Store',showBorder:true,padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //feature brands
                  TSectionHeading(title: 'Featured Brands',showActionButton: true,onPressed:(){}),
                  const SizedBox(height: TSizes.spaceBtwItem/1.5,),
                  TRoundedContainer(
                    padding: const EdgeInsets.all(TSizes.sm),
                    showBorder:true,
                    child:Row(
                      children: [
                        TCircularImage(image: TImages.clothIcon,isNetworkImage: false,
                          backgroundColor:Colors.transparent,
                        overlayColor: THelperFunctions.isDarkMode(context)?TColors.white:TColors.dark,),
                        const SizedBox(width:TSizes.spaceBtwItem/2),
                        const Column(
                        children: [

                        ],
                        )
                      ],
                    )
                  )
                ],
              ),
            )
          )
        ];

      },body:Container())
    );
  }
}


