import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/constants/app_text_style.dart';
import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/screens/global_widgets/close_icon_button.dart';
import 'package:heropedia/screens/global_widgets/custom_chip.dart';
import 'package:heropedia/screens/hero_details/widgets/hero_image.dart';
import 'package:heropedia/service/utilities.dart';

class HeroCover extends StatelessWidget {
  final Result hero;

  const HeroCover({
    Key? key,
    required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(hero.heroImage),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 5.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.kColorDarkGrey.withOpacity(0.10),
                AppColors.kColorDarkGrey,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: AppColors.kColorTransparent,
            body: SafeArea(
              child: Stack(
                children: [
                  const CloseIconButton(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        HeroCoverImage(
                          heroTag: hero.heroId,
                          heroImageUrl: hero.heroImage,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomChip(
                                content: hero.publisherName,
                                color: Utilities.getColorByPublisherName(
                                  hero.publisherName,
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                hero.heroName,
                                style: AppTextStyle.kTextHeader1.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  bottom: 10.0,
                                  top: 6.0,
                                ),
                                width: 150,
                                child: Text(
                                  hero.heroFirstAppearance,
                                  style: AppTextStyle.kTextLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
