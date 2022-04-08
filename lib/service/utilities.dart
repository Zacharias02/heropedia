import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';

class Utilities {
  Utilities._();

  /// Singleton to ensure only one class instance is created
  static final Utilities _instance = Utilities._();
  factory Utilities() => _instance;

  static Color? getColorByPublisherName(String publisherName) {
    Color? color;

    if (publisherName.contains('DC')) {
      color = AppColors.kColorDCBlue;
    } else if (publisherName.contains('Marvel')) {
      color = AppColors.kColorMarvelRed;
    }

    return color;
  }
}
