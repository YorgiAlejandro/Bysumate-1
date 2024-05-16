import 'package:bysumate/common/widgets/appbar/appbar.dart';
import 'package:bysumate/common/widgets/images/t_circular_image.dart';
import 'package:bysumate/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar --
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      /// -- body --
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Profile Picture --
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'),)
                  ],
                ),
              ),

              /// -- Details --
              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name', value: 'Yorgi-Soft Company', onPressed: (){},),
              TProfileMenu(title: 'UserName', value: 'Yorgi-Soft Company', onPressed: (){},),

              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// -- Heading Personal Info --
              const TSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'User ID', value: '45689', onPressed: (){}, icon: Iconsax.copy,),
              TProfileMenu(title: 'E-mail', value: 'yorgidelriomarquez@gmail.com', onPressed: (){},),
              TProfileMenu(title: 'Phone Number', value: '+53 53933754', onPressed: (){},),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: (){},),
              TProfileMenu(title: 'Date of Birth', value: '21 dic, 1999', onPressed: (){},),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

