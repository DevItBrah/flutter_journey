import 'package:e_commerce/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/Layouts/grid_layout.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';
class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Popular Brand'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:TSortableProducts(),
      ),
      ),
    );
  }
}


