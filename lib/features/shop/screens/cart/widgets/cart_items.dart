import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';
class TCartItems extends StatelessWidget {
  const TCartItems({super.key,
  this.showAddRemoveButton=true});
final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder:(_,__)=>const SizedBox(  height: TSizes.spaceBtwSections,),
        itemCount: 2,
        itemBuilder:(_,index)=> Column(
          children: [
            TCartItem(),
            if(showAddRemoveButton)SizedBox(height: TSizes.spaceBtwItem,),
            if(showAddRemoveButton) Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 70,),
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TProduct_price_text(price: '256 '),
                )

              ],
            )
          ],
        )
    );
  }
}
