import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/rounded_container.dart';
import '../../image_text/TCircularImage.dart';
class TBrandCard extends StatelessWidget {
  const TBrandCard({super.key,
  this.onTap,
  required this.showBorder});
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap:onTap,
      child: TRoundedContainer(
        showBorder:showBorder,
        backgroundColor:Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: TCircularImage(
             isNetworkImage:false,
              image:TImages.clothIcon,
              backgroundColor:Colors.transparent,
              overlayColor:isDark?TColors.white:TColors.black,
            ),
          ),
        const SizedBox(width: TSizes.spaceBtwItem/2),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large,),
              Text(
                '25 Product',
                overflow: TextOverflow.ellipsis,
                style:Theme.of(context).textTheme.labelMedium
              )
            ],
          ),
        )],
      )),
    );
  }
}
