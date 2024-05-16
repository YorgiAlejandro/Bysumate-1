import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bysumate/common/widgets/products/cart/coupon_widget.dart';
import 'package:bysumate/common/widgets/success_screen/success_screen.dart';
import 'package:bysumate/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:bysumate/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:bysumate/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:bysumate/navigation_menu.dart';
import 'package:bysumate/utils/constants/colors.dart';
import 'package:bysumate/utils/constants/sizes.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import 'widgets/billing_amount_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in cart
              TCartItems(dark: dark, showAddRemoveButtons: false,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// -- Coupon TextField
              TCouponCode(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// -- Billing Selection --
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Payemnt Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    
                    /// Address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      
      ///CheckoutButton
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            ()=> SuccessScreen(
              image: TImages.successfullPaymentIcon,
              title: 'Payment Success',
              subtitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll( () => const NavigationMenu() ),
          )), 
          child: const Text('Checkout \$256.0'),

        ),
      ),
    );
  }
}

