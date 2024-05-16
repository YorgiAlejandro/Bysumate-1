import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:bysumate/features/shop/screens/checkout/checkout.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        /// Items in cart
        child: TCartItems(dark: dark),
      ),
      ///CheckoutButton
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(()=> const CheckoutScreen()), child: const Text('Checkout \$256.0'),),
      ),
    );
  }
}

