import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItem),
                          const TProduct_price_text(price: '20'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const TProductTitleText(title: 'This is the Description of the Products and it can go upto max 4 lines',
              smallSize: true,
              maxLines: 4 ,)

              ///Actual Price
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItem,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Color'),
            const SizedBox(height: TSizes.spaceBtwItem/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false ,onSelected: (value){},
                )
              ],
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItem,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size '),
            const SizedBox(height: TSizes.spaceBtwItem/2,),
            Wrap(
              spacing: 8 ,
              children: [
                TChoiceChip(text: 'Green', selected: true,onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false,onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false ,onSelected: (value){},),
              ],
            )
          ],
        )
      ],
    );
  }
}

