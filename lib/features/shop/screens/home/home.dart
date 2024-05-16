import 'package:bysumate/features/shop/screens/all_products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_containers.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/products_card/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar ---
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --- SearchBar ---
                  TSearchContainer(
                    text: 'Search in Store',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// --- Heading ---
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                      ],
                    ),
                  ),
                  /// --- Categories ---
                  const THomeCategories(),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
              
            ),

            /// --- Body ---
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    ///  -- Promo Slider --
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3,
                        TImages.promoBanner4
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    /// -- Heading
                    TSectionHeading(title: 'Popular products', onPressed: ()=> Get.to(()=> const AllProducts()),),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    /// -- Popular Products --
                    TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
