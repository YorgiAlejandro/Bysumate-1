import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/images/t_rounded_image.dart';
import 'package:bysumate/common/widgets/products/products_card/product_card_horizontal.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:bysumate/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants/image_strings.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              TRoundedImage(onPressed: (){}, imageUrl: TImages.promoBanner4, width: double.infinity, applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// SubCategories 
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder: ((context, index) => const TProductCardHorizontal())
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      itemBuilder: ((context, index) => const TProductCardHorizontal())
                    ),
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}