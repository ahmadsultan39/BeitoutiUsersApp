import 'package:beitouti_users/features/auth/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../widgets/form_entity.dart';

class StudyInfoPage extends StatefulWidget {
  final TextEditingController studySpecialtyTextController;
  final TextEditingController studyYearTextController;
  final TextEditingController birthDateTextController;
  final Function(int) genderController;
  final VoidCallback onPressed;

  const StudyInfoPage({
    Key? key,
    required this.studySpecialtyTextController,
    required this.studyYearTextController,
    required this.birthDateTextController,
    required this.genderController,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<StudyInfoPage> createState() => _StudyInfoPageState();
}

class _StudyInfoPageState extends State<StudyInfoPage> {
  bool _isBirthDateTextValid = false;
  String _birthDateErrorMessage = '';

  void _birthDateValidation(String birthDate) {
    if (birthDate.isEmpty) {
      setState(() {
        _isBirthDateTextValid = false;
        _birthDateErrorMessage = 'الرجاء إدخال تاريخ الميلاد';
      });
    } else if (!_isBirthDateTextValid) {
      setState(() {
        _isBirthDateTextValid = true;
      });
    }
  }

  /// User StudySpeciality attributes
  bool _isStudySpecialityTextValid = false;
  String _studySpecialityError = '';

  void _studySpecialityValidation(String studySpeciality) {
    if (studySpeciality.isEmpty) {
      setState(() {
        _isStudySpecialityTextValid = false;
        _studySpecialityError = 'الرجاء إدخال الفرع الدراسي';
      });
    } else if (studySpeciality.length < 2) {
      setState(() {
        _isStudySpecialityTextValid = false;
        _studySpecialityError = 'الفرع الدراسي يجب أن يتكون من محرفين أو أكثر';
      });
    } else if (!_isStudySpecialityTextValid) {
      setState(() {
        _isStudySpecialityTextValid = true;
      });
    }
  }

  /// User StudyYear attributes
  bool _isStudyYearTextValid = false;
  String _studyYearError = '';

  void _studyYearValidation(String studyYear) {
    if (studyYear.isEmpty) {
      setState(() {
        _isStudyYearTextValid = false;
        _studyYearError = 'الرجاء إدخال السنة الدراسية';
      });
    } else if (!_isStudyYearTextValid) {
      setState(() {
        _isStudyYearTextValid = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageViewItem(
      buttonText: 'إنشاء الحساب',
      onPressed: () {
        _studyYearValidation(widget.studyYearTextController.text);
        _studySpecialityValidation(widget.studySpecialtyTextController.text);
        _birthDateValidation(widget.birthDateTextController.text);
        if (_isBirthDateTextValid &&
            _isStudyYearTextValid &&
            _isStudySpecialityTextValid) {
          widget.onPressed();
        }
      },
      children: [
        FormEntity(
          controller: widget.studySpecialtyTextController,
          onChanged: _studySpecialityValidation,
          error: _studySpecialityError,
          upperLabel: "الفرع الدراسي",
          height: 40.h,
          isInputTextValid: _isStudySpecialityTextValid,
        ),
        FormEntity(
          controller: widget.studyYearTextController,
          onChanged: _studyYearValidation,
          error: _studyYearError,
          height: 40.h,
          upperLabel: "السنة الدراسية",
          isInputTextValid: _isStudyYearTextValid,
        ),
        FormEntity(
          textInputAction: TextInputAction.done,
          controller: widget.birthDateTextController,
          onChanged: _birthDateValidation,
          error: _birthDateErrorMessage,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1980),
              lastDate: DateTime.now(),
            );
            if (date != null) {
              setState(() {
                widget.birthDateTextController.text =
                    DateFormat('yyyy-MM-dd').format(date);
              });
            }
          },
          prefixIcon: Icons.date_range_rounded,
          enabled: false,
          upperLabel: "تاريخ الميلاد",
          isInputTextValid: _isBirthDateTextValid,
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
