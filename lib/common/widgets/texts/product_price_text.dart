import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
class TProduct_price_text extends StatelessWidget {
  const TProduct_price_text({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.isLarge = false,
    this.maxlines=1,
    this.lineThrough =false,
  });
  final String currencySign,price;
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        Text(
          currencySign +price,
          maxLines: maxlines,
          overflow: TextOverflow.ellipsis,
          style: isLarge? Theme.of(context).textTheme.headlineMedium!.apply(decoration:lineThrough?TextDecoration.lineThrough:null):
              Theme.of(context).textTheme.titleLarge!.apply(decoration:lineThrough?TextDecoration.lineThrough:null)
        ),
        Container(
          decoration: const BoxDecoration(
            color: TColors.dark,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.cardRadiusMd),
              bottomRight: Radius.circular(
                TSizes.productImageRadius,
              ),
            ),
          ),
          child: const SizedBox(
            width: TSizes.iconLg * 1.2,
            height: TSizes.iconLg * 1.2,
            child: Center(child: Icon(Iconsax.add, color: TColors.white)),
          ),
        ),
      ],
    );
  }
}