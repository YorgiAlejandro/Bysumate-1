import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/icons/t_circular_icon.dart';
import 'package:bysumate/common/widgets/layouts/grid_layout.dart';
import 'package:bysumate/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bysumate/features/shop/screens/home/home.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(dark: dark, icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}