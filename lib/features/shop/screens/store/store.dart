import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/appbar/tabbar.dart';
import 'package:bysumate/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bysumate/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bysumate/common/widgets/layouts/grid_layout.dart';
import 'package:bysumate/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:bysumate/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:bysumate/features/shop/screens/brand/all_brands.dart';
import 'package:bysumate/features/shop/screens/store/widgets/category_tab.dart';
import 'package:bysumate/utils/constants/enums.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/cart.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// ---- APP BAR ----
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(onPressed: ()=> Get.to(()=> const CartScreen()) ,iconColor: THelperFunctions.isDarkMode(context) ? TColors.light : TColors.black)
          ],
        ),
        body: NestedScrollView(
          /// ---- Header ----
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TSearchContainer(
                        text: 'Search in Store',
                        onTap: () {},
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      /// -- Feature brands
                      TSectionHeading(
                        title: 'Feature Brands',
                        onPressed: () => Get.to(()=> const AllBrandsScreen()),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      /// ---- Brands Grid ----
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index){
                          return GestureDetector(
                            onTap: (){},
                            child: TRoundedContainer(
                                padding: const EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    /// -- Icon
                                    Flexible(
                                      child: TCircularImage(
                                        image: TImages.shoeIcon,
                                        backgroundColor: Colors.transparent,
                                        overlayColor:
                                            THelperFunctions.isDarkMode(context)
                                                ? TColors.white
                                                : TColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: TSizes.spaceBtwItems / 2,
                                    ),
                                    /// -- Text --
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const TBrandTitleTextWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSizes: TextSizes.large,
                                          ),
                                          Text(
                                            '256 products',
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          );
                        }
                      )
                    ],
                  ),
                ),
                /// -- Tabs --
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports'),),
                    Tab(child: Text('Furniture'),),
                    Tab(child: Text('Electronics'),),
                    Tab(child: Text('Clothes'),),
                    Tab(child: Text('Cosmetics'),),
                  ],
                ),
              )
            ];
          },

          ///---Body #2---TabBar Views
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}



