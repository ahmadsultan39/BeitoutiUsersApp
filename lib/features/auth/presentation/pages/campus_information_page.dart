import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/widgets/custom_expansion_tile.dart';
import '../widgets/form_entity.dart';
import '../widgets/page_view_item.dart';

class CampusInformationPage extends StatefulWidget {
  final TextEditingController nationalIdTextController;
  final TextEditingController campusCardIdTextController;
  final TextEditingController campusExpiryDateTextController;
  final TextEditingController campusUnitNumberTextController;
  final Function(int) campusLocationController;
  final VoidCallback onPressed;

  const CampusInformationPage({
    Key? key,
    required this.nationalIdTextController,
    required this.campusCardIdTextController,
    required this.campusExpiryDateTextController,
    required this.campusLocationController,
    required this.campusUnitNumberTextController,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CampusInformationPage> createState() => _CampusInformationPageState();
}

class _CampusInformationPageState extends State<CampusInformationPage> {
  int temp = 0;

  final RegExp _validNumberExp = RegExp(r'[0-9]$');

  // Campus Location
  final List<String> _campusLocations = [
    "السكن الجامعي بالمزة",
    "السكن الجامعي بالهمك",
    "السكن الجامعي ببرزة",
  ];
  bool _isStudentCampusLocationChanged = false;
  String _studentCampusLocation = 'الرجاء إختيار مكان السكن';
  final GlobalKey<CustomExpansionTileState> key = GlobalKey();

  // National Id
  final RegExp _validNationalIdExp = RegExp(r'[0-9]{11}$');
  bool _isNationalIdTextValid = false;
  String _nationalIdErrorMessage = '';

  void _nationalIdValidation(String nationalId) {
    if (nationalId.isEmpty) {
      setState(() {
        _isNationalIdTextValid = false;
        _nationalIdErrorMessage = 'الرجاء إدخال الرقم الوطني';
      });
    } else if (nationalId.length != 11) {
      setState(() {
        _isNationalIdTextValid = false;
        _nationalIdErrorMessage = 'الرقم الوطني يجب أن يتكون من  11 رقم';
      });
    } else if (!_validNationalIdExp.hasMatch(nationalId)) {
      setState(() {
        _isNationalIdTextValid = false;
        _nationalIdErrorMessage = 'الرجاء إدخال رقم وطتي صالح';
      });
    } else if (!_isNationalIdTextValid) {
      setState(() {
        _isNationalIdTextValid = true;
      });
    }
  }

  // Campus card id
  bool _isCampusCardIdTextValid = false;
  String _campusCardIdErrorMessage = '';

  void _campusCardIdValidation(String campusCardId) {
    if (campusCardId.isEmpty) {
      setState(() {
        _isCampusCardIdTextValid = false;
        _campusCardIdErrorMessage = 'الرجاء إدخال رقم بطاقة السكن';
      });
    } else if (!_validNumberExp.hasMatch(campusCardId)) {
      setState(() {
        _isCampusCardIdTextValid = false;
        _campusCardIdErrorMessage = 'الرجاء إدخال رقم بطاقة سكن صالح';
      });
    } else if (!_isCampusCardIdTextValid) {
      setState(() {
        _isCampusCardIdTextValid = true;
      });
    }
  }

  // Campus expiry date
  bool _isCampusExpiryDateTextValid = false;
  String _campusExpiryDateErrorMessage = '';

  void _campusExpiryDateValidation(String campusExpiryDate) {
    if (campusExpiryDate.isEmpty) {
      setState(() {
        _isCampusExpiryDateTextValid = false;
        _campusExpiryDateErrorMessage =
            'الرجاء إدخال تاريخ انتهاء صلاحية البطاقة';
      });
    } else if (!_isCampusExpiryDateTextValid) {
      setState(() {
        _isCampusExpiryDateTextValid = true;
      });
    }
  }

  // Campus unit number
  bool _isCampusUnitNumberTextValid = false;
  String _campusUnitNumberErrorMessage = '';

  void _campusUnitNumberValidation(String campusUnitNumber) {
    if (campusUnitNumber.isEmpty) {
      setState(() {
        _isCampusUnitNumberTextValid = false;
        _campusUnitNumberErrorMessage = 'الرجاء إدخال رقم الوحدة السكنية';
      });
    } else if (!_validNumberExp.hasMatch(campusUnitNumber)) {
      setState(() {
        _isCampusUnitNumberTextValid = false;
        _campusUnitNumberErrorMessage = 'الرجاء إدخال وحدة سكنية صالح';
      });
    } else if (!_isCampusUnitNumberTextValid) {
      setState(() {
        _isCampusUnitNumberTextValid = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
      buttonText: "التالي",
      onPressed: () {
        _campusUnitNumberValidation(widget.campusUnitNumberTextController.text);
        _campusCardIdValidation(widget.campusCardIdTextController.text);
        _campusExpiryDateValidation(widget.campusExpiryDateTextController.text);
        _campusUnitNumberValidation(widget.campusUnitNumberTextController.text);
        _nationalIdValidation(widget.nationalIdTextController.text);
        if (_isNationalIdTextValid &&
            _isCampusUnitNumberTextValid &&
            _isCampusExpiryDateTextValid &&
            _isStudentCampusLocationChanged &&
            _isCampusCardIdTextValid) {
          widget.onPressed();
        }
      },
      children: [
        FormEntity(
          controller: widget.nationalIdTextController,
          onChanged: _nationalIdValidation,
          error: _nationalIdErrorMessage,
          upperLabel: "الرقم الوطني",
          isInputTextValid: _isNationalIdTextValid,
          height: 40.h,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          textSize: 15.sp,
        ),
        FormEntity(
          controller: widget.campusCardIdTextController,
          onChanged: _campusCardIdValidation,
          textInputType: TextInputType.emailAddress,
          error: _campusCardIdErrorMessage,
          upperLabel: "رقم بطاقة السكن",
          isInputTextValid: _isCampusCardIdTextValid,
          height: 40.h,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          textSize: 15.sp,
        ),
        FormEntity(
          controller: widget.campusExpiryDateTextController,
          onChanged: _campusExpiryDateValidation,
          error: _campusExpiryDateErrorMessage,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(DateTime.now().year + 2),
            );
            if (date != null) {
              setState(() {
                widget.campusExpiryDateTextController.text =
                    DateFormat('yyyy-MM-dd').format(date);
              });
            }
          },
          prefixIcon: Icons.date_range_rounded,
          enabled: false,
          upperLabel: "تاريخ انتهاء صلاحية البطاقة",
          isInputTextValid: _isCampusExpiryDateTextValid,
          height: 40.h,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          textSize: 15.sp,
        ),
        FormEntity(
          upperLabel: 'مكان السكن الجامعي',
          child: Column(
            children: [
              CustomExpansionTile(
                key: key,
                title: Text(
                  _studentCampusLocation,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: _isStudentCampusLocationChanged
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                children: [
                  ..._campusLocations
                      .map(
                        (location) => GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            setState(() {
                              temp++;
                              _isStudentCampusLocationChanged = true;
                              _studentCampusLocation = location;
                              widget.campusLocationController(
                                  _campusLocations.indexOf(location));
                              key.currentState?.collapse();
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.h,
                            ),
                            child: Text(
                              location,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: _studentCampusLocation == location
                                    ? Theme.of(context).colorScheme.tertiary
                                    : Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ],
                backgroundColor: Colors.white,
                expandedAlignment: Alignment.centerRight,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                collapsedBackgroundColor: Colors.white,
                childrenPadding: EdgeInsets.symmetric(horizontal: 20.w),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 10.h,
                  right: 10.w,
                ),
                child: Row(
                  children: [
                    Text(
                      _isStudentCampusLocationChanged && temp != 0
                          ? ""
                          : "الرجاء اختيار مكان السكن الجامعي",
                      style: TextStyle(
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        FormEntity(
          textInputAction: TextInputAction.done,
          controller: widget.campusUnitNumberTextController,
          onChanged: _campusUnitNumberValidation,
          error: _campusUnitNumberErrorMessage,
          upperLabel: "رقم الوحدة السكنية",
          isInputTextValid: _isCampusUnitNumberTextValid,
          height: 40.h,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          textSize: 15.sp,
        ),
        SizedBox(
          height: 200.h,
        ),
      ],
    );
  }
}
