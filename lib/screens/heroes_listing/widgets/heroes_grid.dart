import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_text_style.dart';
import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/screens/heroes_listing/widgets/hero_item.dart';

class HeroesGrid extends StatelessWidget {
  const HeroesGrid({
    Key? key,
    required this.heroes,
  }) : super(key: key);

  final List<Result> heroes;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: heroes
          .map(
            (Result hero) => HeroItem(
              heroId: hero.heroId,
              imageUrl: hero.heroImage,
              heroFullName: hero.heroName,
              onTapped: () {},
            ),
          )
          .toList(),
    );
  }
}
