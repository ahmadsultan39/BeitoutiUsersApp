import 'package:beitouti_users/core/util/constants.dart';
import 'package:beitouti_users/core/util/generate_screen.dart';
import 'package:beitouti_users/core/widgets/custom_dialog.dart';
import 'package:beitouti_users/core/widgets/decor.dart';
import 'package:beitouti_users/features/auth/domain/entities/register_request.dart';
import 'package:beitouti_users/features/auth/presentation/pages/campus_information_page.dart';
import 'package:beitouti_users/features/auth/presentation/pages/confirm_phone_number_page.dart';
import 'package:beitouti_users/features/auth/presentation/pages/name_and_email_page.dart';
import 'package:beitouti_users/features/auth/presentation/pages/phone_number_page.dart';
import 'package:beitouti_users/features/auth/presentation/pages/study_info_page.dart';
import 'package:beitouti_users/features/auth/presentation/widgets/beitouti_text.dart';
import 'package:beitouti_users/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/util/enums.dart';
import '../../../../core/widgets/custom_loader.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_state.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _bloc = sl<AuthBloc>();

  // Page View
  final PageController _pageController = PageController();
  final _duration = const Duration(milliseconds: 300);
  final _curve = Curves.fastOutSlowIn;

  // Phone Number
  final TextEditingController _phoneNumberTextController =
      TextEditingController();

  // Pin Code
  final TextEditingController _pinCodeTextController = TextEditingController();

  // Name
  final TextEditingController _nameTextController = TextEditingController();

  // Email
  final TextEditingController _emailTextController = TextEditingController();

  // Campus Cared Expiry Date
  final TextEditingController _campusExpiryDateTextController =
      TextEditingController();

  // Birth Date
  final TextEditingController _birthDateController = TextEditingController();

  // Campus Location
  late StudentLocation _studentLocation;

  // National Id
  final TextEditingController _nationalIdTextController =
      TextEditingController();

  // Campus Unit number
  final TextEditingController _campusUnitNumberTextController =
      TextEditingController();

  // Campus Card Id
  final TextEditingController _campusCardIdTextController =
      TextEditingController();

  // Study Specialty
  final TextEditingController _studySpecialtyTextController =
      TextEditingController();

  // Birth Date
  final TextEditingController _birthDate = TextEditingController();

  // Study Year
  final TextEditingController _studyYearTextController =
      TextEditingController();

  // Gender
  late final Gender _gender;

  @override
  void initState() {
    super.initState();
  }

  void _goToNextPage() {
    setState(() {
      _pageController.nextPage(
        duration: _duration,
        curve: _curve,
      );
    });
  }

  void _setStudentLocation(int locationNumber) {
    setState(() {
      _studentLocation = StudentLocation.values[locationNumber];
    });
  }

  void _setGender(int gender) {
    setState(() {
      _gender = Gender.values[gender];
    });
  }

  void _sendCode() {
    _bloc.addSendCodeEvent(phoneNumber: _phoneNumberTextController.text);
  }

  void _checkCodeAndAccessibility() {
    _bloc.addCheckCodeEvent(
      phoneNumber: _phoneNumberTextController.text,
      code: _pinCodeTextController.text,
    );
  }

  void _requestRegister() {
    final _request = RegisterRequest(
      name: _nameTextController.text,
      email: _emailTextController.text,
      phoneNumber: _phoneNumberTextController.text,
      birthDate: _birthDateController.text,
      studySpeciality: _studySpecialtyTextController.text,
      nationalId: _nationalIdTextController.text,
      studyYear: _studyYearTextController.text,
      campusCardId: _campusCardIdTextController.text,
      campusCardExpiryDate: _campusExpiryDateTextController.text,
      location: _studentLocation,
      gender: Gender.male,
      //_gender,
      campusUnitNumber: _campusUnitNumberTextController.text,
    );
    _bloc.addRequestRegisterEvent(
      request: _request,
    );
  }

  void _clearAllTextControllers() {
    setState(() {
      // Phone Number
      _phoneNumberTextController.clear();

      // Pin Code
      _pinCodeTextController.clear();

      // Name
      _nameTextController.clear();

      // Email
      _emailTextController.clear();

      // Campus Cared Expiry Date
      _campusExpiryDateTextController.clear();

      // Birth Date
      _birthDateController.clear();

      // // Campus Location
      // _studentLocation

      // National Id
      _nationalIdTextController.clear();
      // Campus Unit number
      _campusUnitNumberTextController.clear();

      // Campus Card Id
      _campusCardIdTextController.clear();

      // Study Specialty
      _studySpecialtyTextController.clear();

      // Birth Date
      _birthDate.clear();

      // Study Year
      _studyYearTextController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).backgroundColor,
        body: BlocListener<AuthBloc, AuthState>(
          bloc: _bloc,
          listener: (context, state) {
            if (state.isCodeSent && _pageController.page == 0.0) {
              // Code now is sent and we are waiting for message
              _goToNextPage();
            }
            if (state.isCodeValid && _pageController.page == 1.0) {
              // Code is right, Now we must check accessibility status
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.active) {
                WidgetsBinding.instance?.addPostFrameCallback((_) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    NameScreen.homeScreen,
                    (route) => false,
                  );
                });
              }
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.blocked) {

                _pageController.jumpToPage(0);
                _clearAllTextControllers();
                showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                    content: 'عزيزي الطالب،\n هذا الحساب محظور',
                    title: Icon(
                      Icons.block_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 35.sp,
                    ),
                  ),
                );
                _bloc.reInitializeState();
              }
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.inActive) {
                _goToNextPage();
                // showDialog(
                //   context: context,
                //   builder: (_) => CustomDialog(
                //     content:
                //         'عزيزي الطالب،\n لقد انتهت صلاحية حسابك الحالي ويتوجب عليك تسجيل حساب جديد',
                //     title: Icon(
                //       Icons.timer_off_rounded,
                //       color: Theme.of(context).colorScheme.primary,
                //       size: 35.sp,
                //     ),
                //   ),
                // );
              }
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.isRejected) {
                _pageController.jumpToPage(0);
                _clearAllTextControllers();
                showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                    content: 'عزيزي الطالب،\n لقد تم رفض طلب انضمامك',
                    title: Icon(
                      Icons.no_accounts,
                      color: Theme.of(context).colorScheme.primary,
                      size: 35.sp,
                    ),
                  ),
                );
                _bloc.reInitializeState();
              }
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.notApproved) {
                _pageController.jumpToPage(0);
                _clearAllTextControllers();
                showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                    content: 'عزيزي الطالب،\n طلب انضمامك قيد المراجعة حالياً',
                    title: Icon(
                      Icons.lock_clock,
                      color: Theme.of(context).colorScheme.primary,
                      size: 35.sp,
                    ),
                  ),
                );
                _bloc.reInitializeState();
              }
              if (state.accessibilityStaysType ==
                  AccessibilityStaysType.notRegistered) {
                _goToNextPage();
              }
            }
            if (state.isRegisterRequestSent) {
              _bloc.reInitializeState();
              setState(
                () {
                  _clearAllTextControllers();
                  _pageController.jumpToPage(0);
                },
              );
              showDialog(
                context: context,
                builder: (_) => CustomDialog(
                  content: 'عزيزي الطالب،\n تم استلام طلب انضمامك بنجاح',
                  title: Icon(
                    Icons.done_outline_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 35.sp,
                  ),
                ),
              );
            }
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            bloc: _bloc,
            builder: (context, state) {
              WidgetsBinding.instance?.addPostFrameCallback((_) {
                message(
                  message: state.message,
                  isError: state.error,
                  context: context,
                  bloc: _bloc,
                );
              });
              return Stack(
                alignment: Alignment.center,
                children: [
                  const Decor(),
                  const BeitoutiText(),
                  Positioned(
                    top: 250.h,
                    child: SizedBox(
                      height: 500.h,
                      width: 375.w,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.w,
                        ),
                        child: PageView(
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          reverse: true, //Because arabic is from right to left
                          children: [
                            PhoneNumberPage(
                              phoneNumberTextController:
                                  _phoneNumberTextController,
                              onPressed: _sendCode, //_sendCode,
                            ),
                            ConfirmPhoneNumberPage(
                              pinCodeTextController: _pinCodeTextController,
                              onPressed: _checkCodeAndAccessibility,
                            ),
                            NameAndEmailPage(
                              nameTextController: _nameTextController,
                              emailTextController: _emailTextController,
                              onPressed: _goToNextPage,
                            ),
                            CampusInformationPage(
                              nationalIdTextController:
                                  _nationalIdTextController,
                              campusCardIdTextController:
                                  _campusCardIdTextController,
                              campusExpiryDateTextController:
                                  _campusExpiryDateTextController,
                              campusUnitNumberTextController:
                                  _campusUnitNumberTextController,
                              campusLocationController: _setStudentLocation,
                              onPressed: _goToNextPage,
                            ),
                            StudyInfoPage(
                              studySpecialtyTextController:
                                  _studySpecialtyTextController,
                              studyYearTextController: _studyYearTextController,
                              birthDateTextController: _birthDateController,
                              genderController: _setGender,
                              onPressed: _requestRegister,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (state.isLoading) const Loader(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
