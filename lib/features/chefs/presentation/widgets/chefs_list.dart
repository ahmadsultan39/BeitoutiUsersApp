import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/default_rating_bar.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../../../chef_menu/presentation/pages/chef_menu_page.dart';
import '../../../meals/domain/entities/home_chef.dart';
import '../../domain/entities/chef.dart';

class ChefsList extends StatelessWidget {
  final String title;
  final bool isLoading;
  final List<Chef> chefs;

  const ChefsList(
      {Key? key,
      required this.title,
      required this.isLoading,
      required this.chefs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 10.h,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (isLoading)
          const Loader()
        else
          SizedBox(
            width: 375.w,
            height: 200.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: chefs.length,
              itemBuilder: (_, index) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      NameScreen.chefScreen,
                      arguments: HomeChef(
                        id: chefs[index].id,
                        name: chefs[index].name,
                        profilePicture: chefs[index].profilePicture,
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 150.w,
                        height: 150.w,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ImageChecker(
                              imageUrl: chefs[index].profilePicture,
                              circle: false,
                              height: 150.w,
                              width: 150.w,
                            ),
                            Container(
                              height: 150.w,
                              width: 150.w,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            Positioned(
                              bottom: 5,
                              child: DefaultRatingBar(
                                numberColor: Theme.of(context).colorScheme.tertiary,
                                withRatingCount: true,
                                totalRating: chefs[index].rateCount,
                                initialRating: chefs[index].rate,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      SizedBox(
                        width: 150.w,
                        child: Center(
                          child: Text(
                            chefs[index].name,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
