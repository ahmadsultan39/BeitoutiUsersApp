import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/features/meals/presentation/pages/meals_page.dart';
import 'package:beitouti_users/features/orders/presentation/pages/orders_page.dart';
import 'package:beitouti_users/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const MealsPage(),
    const Center(
      child: Text("Chefs page"),
    ),
    const OrdersPage(),
    const ProfilePage(),
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
    return Scaffold(
      appBar: AppBar(
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Icon(
              Icons.search_rounded,
              size: 25.sp,
            ),
          ),
        ],
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: SizedBox(
        height: 65.h,
        child: GNav(
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
    );
  }
}
