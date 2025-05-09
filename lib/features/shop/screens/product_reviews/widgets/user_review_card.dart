import 'package:e_commerce/common/widgets/image_text/TCircularImage.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/remove_splash_from_web.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/styles/rounded_container.dart';
import '../../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage(TImages.userProfileImage1),),
                const SizedBox(width:TSizes.spaceBtwItem),
                Text('John Doe',style:Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){},icon:const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height:TSizes.spaceBtwItem),

        //Review
        Row(
          children: [
            const TRatingBarIndicator(rating:4),
            const SizedBox(width:TSizes.spaceBtwItem),
            Text('01 Nov, 2023', style:Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItem,),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate make purchases seamlessly. Great Job!',
          trimLines:2,
          trimMode:TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color:TColors.primary),
          lessStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color:TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItem,),
        //company review
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey:TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Store', style:Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2023',style:Theme.of(context).textTheme.bodyMedium)
                  ],
                ),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate make purchases seamlessly. Great Job!',
                  trimLines:2,
                  trimMode:TrimMode.Line,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color:TColors.primary),
                  lessStyle: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color:TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,)
      ],
    );
  }
}
