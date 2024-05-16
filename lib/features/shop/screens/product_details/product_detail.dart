import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:bysumate/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:bysumate/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:bysumate/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import 'widget/bottom_add_to_cart_widget.dart';
import 'widget/product_detail_image_slider.dart';
import 'widget/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image Slider
            const TProductImageSlider(),
            
            /// 2- Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Rating & Share Button --
                  const TRatingAndShare(),
                  /// -- Price, Title, Stock & Brand --
                  const TProductMetaData(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// -- Attributes --
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  /// -- Checkout Button --
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('CheckOut'))),
                  /// -- Description --
                  const TSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const ReadMoreText(
                    'This is a product description for Blue Nike Sleeve vest. There are more things that can be added but i am offering another options with high quality products and prices',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  /// -- Reviews --
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews(199)', onPressed: (){}, showActionButton: false,),
                      IconButton(onPressed: () =>Get.to(() => const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


