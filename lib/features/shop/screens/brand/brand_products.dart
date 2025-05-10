import 'package:e_commerce/common/widgets/products/sortable/sortable_products.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/products_cards/brand_card.dart';
import '../../../../utils/constants/sizes.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:TAppBar(title:Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder:true),
              SizedBox(height: TSizes.spaceBtwSections,),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
