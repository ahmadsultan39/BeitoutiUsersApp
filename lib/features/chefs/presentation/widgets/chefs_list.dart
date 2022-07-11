import 'package:beitouti_users/core/util/generate_screen.dart';
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
        isLoading
            ? const Loader()
            : SizedBox(
                width: 375.w,
                height: 170.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: chefs.length,
                  itemBuilder: (_, index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) =>  ChefMenuPage(chef: HomeChef(
                        //       id: chefs[index].id,
                        //       name: chefs[index].name,
                        //       profilePicture: chefs[index].profilePicture)),
                        // ));
                        Navigator.of(context).pushNamed(NameScreen.chefScreen,
                            arguments: HomeChef(
                                id: chefs[index].id,
                                name: chefs[index].name,
                                profilePicture: chefs[index].profilePicture));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 100.w,
                            height: 100.w,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Stack(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: Endpoints.imageUrl +
                                      chefs[index].profilePicture,
                                  placeholder: (_, __) => const Loader(),
                                  errorWidget: (_, __, ___) =>
                                      const Icon(Icons.error),
                                  fit: BoxFit.cover,
                                  height: 150.w,
                                  width: 220.w,
                                ),
                                Container(
                                  height: 100.w,
                                  width: 100.w,
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100.w,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        chefs[index].name,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                        child: Row(
                                          children: [
                                            Text(
                                              chefs[index]
                                                  .rate
                                                  .round()
                                                  .toString(),
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const Icon(
                                              Icons.star_rate_rounded,
                                              color: Colors.yellow,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Text(
                                //   state.nearest[index].rateCount
                                //       .toString()
                                //   style: TextStyle(
                                //     color: Theme.of(context)
                                //         .colorScheme
                                //         .tertiary,
                                //   ),
                                // )
                              ],
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
