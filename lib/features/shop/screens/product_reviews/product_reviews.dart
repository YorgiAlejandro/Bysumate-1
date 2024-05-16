import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widget/rating_progress_indicator.dart';
import 'widget/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar --
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),
      /// -- Body --
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems,),
              /// -- Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// -- Users reviews list
              const UserReviewCard(image: TImages.userProfileImage1, name: 'Emilia Clark',),
              const UserReviewCard(image: TImages.userProfileImage2, name: 'Jhonny Deep'),
              const UserReviewCard(image: TImages.userProfileImage3, name: 'Aivars Meijers',),
            ],
          ),
        ),
      ),
    );
  }
}



