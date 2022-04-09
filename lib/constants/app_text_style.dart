import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';

abstract class AppTextStyle {
  static const TextStyle kTextHeader1 = TextStyle(
    color: AppColors.kColorWhite,
    fontSize: 30,
    fontFamily: 'Bangers',
  );

  static const TextStyle kTextRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: 'Saira',
    color: AppColors.kColorWhite,
    fontSize: 15,
  );

  static const TextStyle kTextSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Saira',
    color: AppColors.kColorWhite,
    fontSize: 16,
  );

  static const TextStyle kTextBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: 'Saira',
    color: AppColors.kColorWhite,
    fontSize: 16,
  );

  static const TextStyle kTextLight = TextStyle(
    fontWeight: FontWeight.w300,
    fontFamily: 'Saira',
    color: AppColors.kColorWhite,
    fontSize: 14,
  );
}
