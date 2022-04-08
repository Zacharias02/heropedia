import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/constants/app_text_style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PowerStatIndicator extends StatelessWidget {
  final String centerText;
  final String imageUrl;
  final double percentage;
  final Color progressColor;

  const PowerStatIndicator({
    Key? key,
    required this.centerText,
    required this.imageUrl,
    this.percentage = 0,
    required this.progressColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      lineHeight: 19.0,
      percent: percentage,
      animation: true,
      animationDuration: 500,
      progressColor: progressColor,
      backgroundColor: AppColors.kColorDarkrGreyLight,
      center: Text(
        centerText,
        style: AppTextStyle.kTextSemiBold.copyWith(fontSize: 12),
      ),
      leading: Container(
        height: 55,
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
