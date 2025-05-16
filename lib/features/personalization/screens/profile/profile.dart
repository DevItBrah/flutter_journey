import 'package:e_commerce/common/widgets/heading/section_healding.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/image_text/TCircularImage.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controllers/user_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Text')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            /// profile
            SizedBox(
              child: Column(
                children: [
                  const TCircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change Profile Picture'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItem/2,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItem,),
            const TSectionHeading(title: 'Profile Information',showActionButton: false,),
            TProfileMenu(title:'Name',value:controller.user.value.fullName,onPressed: () =>Get.to(()=> const ChangeName())),
            TProfileMenu(title:'Username',value:controller.user.value.username,onPressed: () {  }),

            const SizedBox(height:TSizes.spaceBtwItem,),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItem,),

            const TSectionHeading(title: 'Personal Information',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItem,),

            TProfileMenu(onPressed: (){}, title: 'User ID', value:controller.user.value.id,icon: Iconsax.copy,value: '45678'),
            TProfileMenu(onPressed: (){}, title: 'E-mail', value: controller.user.value.email),
            TProfileMenu(onPressed: (){}, title: 'Phone Number', value: controller.user.value.phoneNumber),
            TProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
            TProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '17-sep-2001'),
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItem,),

            Center(
              child: TextButton(
                onPressed:()=> controller.deleteAccountWarningPopup(),
                child: const Text('Close Account', style:TextStyle(color:Colors.red)),
              ),
            )


          ],
        ),
      ),
    );
  }
}


