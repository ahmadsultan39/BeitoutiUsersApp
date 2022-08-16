import 'package:beitouti_users/features/chefs/presentation/pages/chefs_page.dart';
import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/features/meals/presentation/pages/meals_page.dart';
import 'package:beitouti_users/features/orders/presentation/pages/orders_page.dart';
import 'package:beitouti_users/features/profile/presentation/bloc/profile.dart';
import 'package:beitouti_users/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../injection.dart';
import '../../../search/presentation/pages/custom_search_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bottomBarKey = GlobalKey<GNavState>();

  final List<Widget> _pages = const [
    MealsPage(),
    ChefsPage(),
    OrdersPage(),
    ProfilePage(),
  ];

  int _selectedPage = 0;

  void _onTapChange(int index) {
    if (index != _selectedPage) {
      setState(() {
        _selectedPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      bloc: sl<ProfileBloc>(),
      listener: (context, state) {
        if (state.logoutSuccess) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            NameScreen.splashScreen,
            (route) => false,
          );
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          // if the current page is not the home page => navigate to home page
          if (_selectedPage != 0) {
            setState(() {
              _selectedPage = 0;
              _bottomBarKey.currentState!.selectedIndex = 0;
            });
            return false;
          }
          // else close the pop up the application
          return true;
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: _selectedPage == 3
              ? null // if selected page is Profile page we need to customize app bar design
              : AppBar(
                  title: Text(
                    "بَيتوتيْ",
                    style: TextStyle(
                      fontSize: 21.sp,
                    ),
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, NameScreen.cartScreen);
                      },
                      child: Icon(
                        MdiIcons.cartOutline,
                        size: 25.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showSearch(
                            context: context,
                            delegate: CustomSearchDelegate(),
                            useRootNavigator: true);
                      },
                      icon: const Icon(
                        Icons.search,
                        // color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ],
                ),
          body: _pages[_selectedPage],
          bottomNavigationBar: SizedBox(
            height: 65.h,
            child: GNav(
              key: _bottomBarKey,
              onTabChange: _onTapChange,
              backgroundColor: Theme.of(context).colorScheme.primary,
              color: Colors.white,
              activeColor: Theme.of(context).colorScheme.primary,
              tabBackgroundColor: Theme.of(context).colorScheme.tertiary,
              tabs: [
                GButton(
                  icon: MdiIcons.food,
                  text: 'الوجبات',
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                ),
                GButton(
                  icon: MdiIcons.chefHat,
                  text: 'الطهاة',
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                ),
                GButton(
                  icon: Icons.playlist_add_check,
                  text: 'الطلبات',
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 10.h,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'الملف الشخصي',
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 10.h,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
