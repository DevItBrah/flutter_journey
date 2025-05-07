import 'package:e_commerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/Layouts/grid_layout.dart';
import '../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../common/widgets/heading/section_healding.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ Padding(
        padding:const EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
          children:[
            const TBrandShowcase(images:[TImages.productImage3,TImages.productImage3,TImages.productImage3]),
            const SizedBox(height: TSizes.spaceBtwItem),
            TSectionHeading(title:'You might like', showActionButton:true,onPressed:(){}),
            const SizedBox(height: TSizes.spaceBtwItem),
            TGridLayout(itemCount:4,itemBuilder:(_,index)=> const TProductCardVertical())
          ]
      
      )
      ),
   ] );
  }
}
