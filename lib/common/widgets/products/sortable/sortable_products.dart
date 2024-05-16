import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../products_card/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort)
          ),
          onChanged: (calue){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
            .map((option) { 
              return DropdownMenuItem(
                value: option,
                child: Text(option)
              );
            }).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        /// Products
        TGridLayout(
          itemCount: 8, 
          itemBuilder: (_, index) => const TProductCardVertical()
        )
      ],
    );
  }
}