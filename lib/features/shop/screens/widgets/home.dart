import 'package:e_commerce/common/widgets/custom_shapes/containers/curverd_edges/curved_edges.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustomCurvedEdges(),
              child: Container(
                height: 400,
                color:TColors.primary,
                padding: const EdgeInsets.all(0),
                child: Stack(
                  children: [
                    Positioned(
                      top: 100,
                      right: 100,
                      child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withValues(alpha: 0.1),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      right: 50,
                      child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withValues(alpha: 0.1),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
