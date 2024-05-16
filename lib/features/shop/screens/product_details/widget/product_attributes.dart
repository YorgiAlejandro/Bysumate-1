import 'package:bysumate/common/widgets/chips/choice_chip.dart';
import 'package:bysumate/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bysumate/common/widgets/products/cart/product_price_text.dart';
import 'package:bysumate/common/widgets/texts/product_title_text.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Sleected Attribute Pricing & Description --
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// Title, Price, and Stock Staus
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ', smallSize: true,),
                          /// Actual price
                          Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          /// Sale Price
                          const TProductPriceText(price: '20')
                        ],
                      ),
                      /// -- Stock --
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
              /// Variation description
              const TProductTitleText(
                title: 'This is the Description of the Product and it can go upto mas 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),  
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        /// -- Attributes --
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            )

          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Size', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true),
                TChoiceChip(text: 'EU 35', selected: false),
                TChoiceChip(text: 'EU 36', selected: false),
                TChoiceChip(text: 'EU 34', selected: true),
                TChoiceChip(text: 'EU 35', selected: false),
                TChoiceChip(text: 'EU 36', selected: false),
                TChoiceChip(text: 'EU 34', selected: true),
                TChoiceChip(text: 'EU 35', selected: false),
                TChoiceChip(text: 'EU 36', selected: false),
              ],
            )
            
          ],
        ),
      ],
    );
  }
}