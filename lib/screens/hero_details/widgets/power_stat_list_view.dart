import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/screens/hero_details/widgets/power_stat_indicator.dart';

class PowerStatListView extends StatelessWidget {
  final Result hero;

  const PowerStatListView({
    Key? key,
    required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        PowerStatIndicator(
          centerText: hero.heroIntText,
          percentage: hero.heroIntPercentage,
          imageUrl: 'assets/images/intelligence.png',
          progressColor: AppColors.kColorIntViolet,
        ),
        PowerStatIndicator(
          centerText: hero.heroStrText,
          percentage: hero.heroStrPercentage,
          imageUrl: 'assets/images/strength.png',
          progressColor: AppColors.kColorStrOrg,
        ),
        PowerStatIndicator(
          centerText: hero.heroSpdText,
          percentage: hero.heroSpdPercentage,
          imageUrl: 'assets/images/speed.png',
          progressColor: AppColors.kColorSpdGreen,
        ),
        PowerStatIndicator(
          centerText: hero.heroDurText,
          percentage: hero.heroDurPercentage,
          imageUrl: 'assets/images/durability.png',
          progressColor: AppColors.kColorDurRed,
        ),
        PowerStatIndicator(
          centerText: hero.heroPwrText,
          percentage: hero.heroPwrPercentage,
          imageUrl: 'assets/images/power.png',
          progressColor: AppColors.kColorIntViolet,
        ),
        PowerStatIndicator(
          centerText: hero.heroCmtText,
          percentage: hero.heroCmtPercentage,
          imageUrl: 'assets/images/combat.png',
          progressColor: AppColors.kColorCbtOrg,
        ),
      ],
    );
  }
}
