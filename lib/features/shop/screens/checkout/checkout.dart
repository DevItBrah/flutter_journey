import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billig_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_sectoin.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../common/widgets/successs_screen/success_screen.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/widgets/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TCartItems(showAddRemoveButton: false),
            const SizedBox(height: TSizes.spaceBtwSections),

            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwSections),

            TRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.black : TColors.white,
              child: const Column(
                children: [
                  //pricing
                  TBillingAmountSection(),
                  SizedBox(height: TSizes.spaceBtwItem),
                  //divider
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItem),
                  TBillingPaymentSection(),
                  SizedBox(height: TSizes.spaceBtwItem),
                  TBillingAddressSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your Item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
