import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/custom_shapes/containers/primary_header_containers.dart';
import 'package:bysumate/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:bysumate/features/personalization/screens/address/address.dart';
import 'package:bysumate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../shop/screens/order/order.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- AppBar --
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                  
                  /// -- User Profile Card --
                  TUserProfileTitle(onPressed: () => Get.to(()=> const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                ],
              )
            ),
            /// -- Body --
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  const TSectionHeading(title: 'Accounts Setting', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address', onTap: ()=> Get.to(()=> const UserAddressScreen()),),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Complete Orders', onTap: ()=> Get.to(()=> const OrderScreen()),),
                  TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification messgae', onTap: (){},),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', onTap: (){},),
                
                  /// -- App setttings --
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload data to your Cloud Firebase'),
                  TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recomendation based on location', trailing: Switch(value: true, onChanged: (bool value) {  },),),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is saf efor all ages', trailing: Switch(value: false, onChanged: (bool value) {  },),),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (bool value) {  },),),
                
                  /// -- LogOut Button --
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: (){}, 
                      child: Text(
                        'Logout', 
                        style: Theme.of(context).textTheme.headlineSmall!.apply(color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary.withOpacity(0.8)),
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 1.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

