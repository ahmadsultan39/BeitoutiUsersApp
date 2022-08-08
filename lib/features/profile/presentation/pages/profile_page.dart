import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_loader.dart';
import 'package:beitouti_users/features/profile/presentation/widgets/all_rights_reserved.dart';
import 'package:beitouti_users/features/profile/presentation/widgets/beitouti_logo.dart';
import 'package:beitouti_users/features/profile/presentation/widgets/information_row.dart';
import 'package:beitouti_users/features/profile/presentation/widgets/profile_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../injection.dart';
import '../bloc/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _bloc = sl<ProfileBloc>();

  @override
  void initState() {
    _bloc.addGetProfileEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.logoutSuccess) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            NameScreen.splashScreen,
            (route) => false,
          );
        }
      },
      child: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: _bloc,
        builder: (context, state) {
          return Stack(
            children: [
              Container(
                width: 375.w,
                height: 420.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 20.h,
                  ),
                  child: SizedBox(
                    height: 400.h - (MediaQuery.of(context).padding.top + 20.h),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const BeitoutiLogo(),
                          InformationRow(
                            value: state.profile?.name ?? '',
                            informationType: 'الاسم',
                          ),
                          InformationRow(
                            value: state.profile?.email ?? '',
                            informationType: 'البريد الالكتروني',
                          ),
                          InformationRow(
                            value: state.profile?.phoneNumber ?? '',
                            informationType: 'رقم الهاتف',
                          ),
                          InformationRow(
                            value:
                                state.profile?.userCampusCardExpiryDate ?? '',
                            informationType: 'تاريخ انتهاء الصلاحية',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 390.h,
                ),
                child: Container(
                  width: 375.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        ProfileTile(
                          title: 'المفضلة',
                          icon: Icons.favorite,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              NameScreen.favouriteScreen,
                            );
                          },
                        ),
                        ProfileTile(
                          title: 'اشتراكاتي',
                          icon: MdiIcons.chefHat,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              NameScreen.currentSubscriptionsScreen,
                            );
                          },
                        ),
                        ProfileTile(
                          title: 'تسجيل الخروج',
                          icon: Icons.logout,
                          onTap: () {
                            _bloc.addLogoutEvent();
                          },
                        ),
                        const AllRightsReserved(),
                      ],
                    ),
                  ),
                ),
              ),
              state.isLoading ? const Loader() : Container(),
            ],
          );
        },
      ),
    );
  }
}

// GestureDetector(
//   onTap: () {
//     Navigator.pushNamed(context, NameScreen.currentSubscriptionsScreen);
//   },
//   child: const Center(
//     child: Text("CurrentSubscriptions"),
//   ),
// ),
