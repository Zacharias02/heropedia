import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_text_style.dart';

class InfoText extends StatelessWidget {
  final String leading;
  final String trailing;

  const InfoText({
    Key? key,
    required this.leading,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: AppTextStyle.kTextRegular.copyWith(fontSize: 16),
          children: [
            TextSpan(text: leading, style: AppTextStyle.kTextBold),
            TextSpan(text: trailing),
          ],
        ),
      ),
    );
  }
}
