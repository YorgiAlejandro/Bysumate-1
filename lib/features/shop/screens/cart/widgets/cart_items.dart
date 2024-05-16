import 'package:bysumate/common/widgets/products/cart/add_remove_button.dart';
import 'package:bysumate/common/widgets/products/cart/cart_item.dart';
import 'package:bysumate/common/widgets/products/cart/product_price_text.dart';
import 'package:bysumate/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    required this.dark, 
    this.showAddRemoveButtons = true,
  });

  final bool dark;
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections), 
      itemCount: 3,
      itemBuilder: (_, index) => Column(
        children: [
          
          /// Cart Item
          const TCartItem(),
          if ( showAddRemoveButtons ) const SizedBox(height: TSizes.spaceBtwItems,),
          
          /// Add Remove buttons Row with total price
          if ( showAddRemoveButtons ) Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  const SizedBox(width: 70),
                  /// Add remove buttons
                  TProductQuantityWithAddRemoveButton(dark: dark),
                ],
              ),
          
              /// -- Total price one type of product --
              const TProductPriceText(price: '256')
            ],
          )
        ],
      ),
    );
  }
}

