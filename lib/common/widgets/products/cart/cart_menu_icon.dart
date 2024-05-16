import 'package:bysumate/features/shop/screens/cart/cart.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor, this.counterBgColor, this.counterTextColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? counterBgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(()=> const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: counterBgColor ?? (dark ? TColors.white : TColors.black),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
