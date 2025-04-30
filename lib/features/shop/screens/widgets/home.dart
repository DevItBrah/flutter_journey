import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        // Padding(
        //   padding: const EdgeInsets.only(top:100.0),
        //   child: SizedBox(
        //           width: double.infinity,
        //           child: ElevatedButton(
        //             onPressed: () {},
        //             child: const Text('Test Button'),
        //           ),
        //         ),
        // ),
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppBar(
                    title: Column(
                      children: [
                        Text(
                          TTexts.homeAppbarTitle,
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.apply(color: TColors.dark),
                        ),
                        Text(
                          TTexts.homeAppbarSubTitle,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: TColors.white),
                        ),
                      ],
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.shopping_bag),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  TTexts.homeAppbarTitle,
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.apply(color: TColors.dark),
                ),
                Text(
                  TTexts.homeAppbarSubTitle,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineSmall!.apply(color: TColors.dark),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

