import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../image_text/TCircularImage.dart';
class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image:TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('K7 Codelabs',style:Theme.of(context).textTheme.headlineSmall!.apply(color:TColors.white)),
      subtitle: Text('Support@k7codelabs.com',style:Theme.of(context).textTheme.bodySmall!.apply(color:TColors.white)),
      trailing: IconButton(onPressed: (){},icon: const Icon(Iconsax.edit,color:TColors.white)),
    );
  }
}