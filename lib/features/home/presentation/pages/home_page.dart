import 'package:beitouti_users/features/meals/presentation/pages/meals_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [
    MealsPage(),
    Container(
      child: Center(
        child: Text("Chefs page"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Orders page"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Profile page"),
      ),
    ),
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
        title: Text("بيتوتي"),
        actions: [
          Icon(Icons.shopping_cart),
          Icon(Icons.search),
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
              icon: Icons.cookie,
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
              icon: Icons.cookie,
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
              icon: Icons.delivery_dining_rounded,
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
