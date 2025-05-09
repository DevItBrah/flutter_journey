import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/rating_prgress_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use.',
              ),
              SizedBox(height: TSizes.spaceBtwItem),
              // overall product rating
              TOverallProductRating(),
              TRatingBarIndicator(rating: 3.5,),
              Text("12,611",style:Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //user reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


