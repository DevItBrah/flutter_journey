import 'package:e_commerce/common/widgets/Layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/common/widgets/products/cart_menu_icon.dart';
import 'package:e_commerce/features/shop/screens/widgets/category_tab.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../common/styles/rounded_container.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text/TCircularImage.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [TCartCounterIcon(onPressed: () {}, iconColor: TColors.dark)],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItem),
                      const TSearchContainer(
                        text: 'Search  in Store',
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      //feature brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItem / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            child: TRoundedContainer(
                              padding: const EdgeInsets.all(TSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  TCircularImage(
                                    isNetworkImage: false,
                                    image: TImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.dark,
                                  ),
                                  const SizedBox(width: TSizes.spaceBtwItem / 2),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: TabBar(
                    isScrollable:true,
                    indicatorColor: TColors.primary,
                    labelColor: THelperFunctions.isDarkMode(context)?TColors.white:TColors.primary,
                    tabs:const [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Cloths')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ] )),
        ),
      );
  }
}

