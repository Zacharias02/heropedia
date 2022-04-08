import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/constants/app_text_style.dart';
import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/screens/hero_details/widgets/biography_section.dart';
import 'package:heropedia/screens/hero_details/widgets/hero_cover.dart';
import 'package:heropedia/screens/hero_details/widgets/others_section.dart';
import 'package:heropedia/screens/hero_details/widgets/power_stat_list_view.dart';

class HeroDetailsScreen extends StatelessWidget {
  const HeroDetailsScreen({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final Result hero;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroCover(hero: hero),
        Expanded(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: AppColors.kColorDarkGrey,
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(35.0),
                child: TabBar(
                  labelStyle: AppTextStyle.kTextSemiBold,
                  unselectedLabelStyle: AppTextStyle.kTextRegular.copyWith(
                    fontSize: 16,
                  ),
                  unselectedLabelColor: AppColors.kColorLightGrey2,
                  indicatorColor: AppColors.kColorWhite,
                  tabs: const [
                    Tab(text: 'Powerstats'),
                    Tab(text: 'Biography'),
                    Tab(text: 'Others'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  PowerStatListView(hero: hero),
                  BiographySection(hero: hero),
                  OthersSection(hero: hero),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
