import 'package:bysumate/common/widgets/layouts/grid_layout.dart';
import 'package:bysumate/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ///--Brands--
                  const TBrandShowCase(
                    images: [
                      TImages.shoeIcon,
                      TImages.shoeIcon,
                      TImages.shoeIcon
                    ],
                  ),
                  const TBrandShowCase(
                    images: [
                      TImages.shoeIcon,
                      TImages.shoeIcon,
                      TImages.shoeIcon
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///--Products you may like--
                  TSectionHeading(
                    title: 'You might like',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ),
        ]);
  }
}
