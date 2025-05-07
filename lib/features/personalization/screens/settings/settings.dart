import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
          TPrimaryHeaderContainer(child:
            Column(
              children: [
                TAppBar(title:Text(
                  'Account',style:Theme.of(context).textTheme.headlineMedium!.apply(color:TColors.white)
                )
                )
              ],
            )
              )
          ],
        ),
      )
    );
  }
}
