import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'home_appbar.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  Container(
                    width:TDeviceUtils.getScreenWidth(context),
                    padding: const EdgeInsets.all(TSizes.md),
                    decoration: BoxDecoration(
                      color:Colors.transparent,

                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





//