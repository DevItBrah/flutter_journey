import 'package:flutter/material.dart';

import '../../../../../common/widgets/heading/section_healding.dart';
import '../../../../../utils/constants/sizes.dart';
class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title:'Shipping Addresss',buttonTitle:'Change',onPressed:(){}),
        Text('Coding with T',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(
          height: TSizes.spaceBtwItem/2,
        ),
        Row(children: [
          const Icon(Icons.phone,color: Colors.grey,size:16,),
          const SizedBox(width: TSizes.spaceBtwItem,),
          Text('1456465664',style:Theme.of(context).textTheme.bodyMedium),
        ],),
        const SizedBox(height: TSizes.spaceBtwItem,),
        Row(
          children: [
            const Icon(Icons.location_history,color:Colors.grey,size:16),
            const SizedBox(width: TSizes.spaceBtwItem,),
            Expanded(child: Text('Sout LIana,Maine 87777,USa',style:Theme.of(context).textTheme.bodyMedium,softWrap: true,),)
          ],
        )
      ],
    );
  }
}
