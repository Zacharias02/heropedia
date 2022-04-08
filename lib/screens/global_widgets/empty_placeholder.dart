import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/constants/app_text_style.dart';

class EmptyErrorPlaceholder extends StatelessWidget {
  final IconData iconData;
  final String message;

  const EmptyErrorPlaceholder({
    Key? key,
    required this.iconData,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              iconData,
              color: AppColors.kColorLightGrey,
              size: 90.0,
            ),
          ),
          Text(
            message,
            style: AppTextStyle.kTextSemiBold.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
