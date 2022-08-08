import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/core/widgets/image_checker.dart';
import 'package:beitouti_users/features/chef_menu/presentation/pages/chef_menu_meals_page.dart';
import 'package:beitouti_users/features/chef_menu/presentation/pages/subscriptions_page.dart';
import 'package:beitouti_users/features/meals/domain/entities/home_chef.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/constants.dart';
import '../../../../injection.dart';
import '../bloc/chef_menu.dart';

class ChefMenuPage extends StatefulWidget {
  final HomeChef chef;

  const ChefMenuPage({Key? key, required this.chef}) : super(key: key);

  @override
  State<ChefMenuPage> createState() => _ChefMenuPageState();
}

class _ChefMenuPageState extends State<ChefMenuPage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final GlobalKey key = GlobalKey();
  late final TabController _tabController;
  final _bloc = sl<ChefMenuBloc>();

  final List<String> _labels = [
    'الوجبات',
    'الاشتراكات',
  ];

  void _onTap(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  void initState() {
    _bloc.addGetChefInfoEvent(widget.chef.id);
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChefMenuBloc, ChefMenuState>(
      bloc: _bloc,
      builder: (context, state) {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          message(
              message: state.message,
              bloc: _bloc,
              isError: state.error,
              context: context);
        });
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Column(
                  children: [
                    ImageChecker(
                      width: 110.w,
                      height: 120.h,
                      imageUrl: widget.chef.profilePicture ?? '',
                    ),
                    // Container(
                    //   width: 110.w,
                    //   margin: const EdgeInsets.symmetric(vertical: 8),
                    //   clipBehavior: Clip.hardEdge,
                    //   decoration: const BoxDecoration(shape: BoxShape.circle),
                    //   child: CachedNetworkImage(
                    //       imageUrl: Endpoints.imageUrl + widget.chef.profilePicture!),
                    // ),
                    if (state.chefInfo != null)
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            " ${state.chefInfo!.rating.round()} (${state.chefInfo!.ratesCount})",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.chef.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    state.isChefInfoLoading
                        ? const Loader()
                        : state.chefInfo != null
                            ? SizedBox(
                                width: 220.w,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_rounded),
                                        Text(
                                          state.chefInfo!.location,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: state.chefInfo!.isAvailable
                                              ? Colors.green
                                              : Colors.red,
                                          size: 16.sp,
                                        ),
                                        Text(
                                          state.chefInfo!.isAvailable
                                              ? " متاح"
                                              : " مغلق",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer_rounded,
                                          size: 16.sp,
                                        ),
                                        Text(
                                          " ${state.chefInfo!.deliveryStartTime.substring(0, 5)} -> ${state.chefInfo!.deliveryEndTime.substring(0, 5)}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "عدد الوجبات المتاحة : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.sp),
                                        ),
                                        Text(
                                            "${state.chefInfo!.remainingAvailableMealsCount} / ${state.chefInfo!.maxMealsPerDay}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.sp)),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                  ],
                ),
              ],
            ),
            centerTitle: true,
            toolbarHeight: 200.h,
            bottom: TabBar(
              controller: _tabController,
              onTap: _onTap,
              labelColor: Theme.of(context).backgroundColor,
              indicatorColor: Theme.of(context).backgroundColor,
              tabs: [
                Tab(
                  text: _labels[0],
                ),
                Tab(text: _labels[1]),
              ],
            ),
          ),
          body: _selectedIndex == 0
              ? ChefMenuMealsPage(id: widget.chef.id)
              : SubscriptionsPage(id: widget.chef.id),
        );
      },
    );
  }
}
