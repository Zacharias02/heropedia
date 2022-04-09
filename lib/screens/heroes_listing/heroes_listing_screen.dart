import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/repositories/hero_repository.dart';
import 'package:heropedia/screens/heroes_listing/widgets/header_content.dart';
import 'package:heropedia/screens/heroes_listing/widgets/heroes_grid.dart';

class HeroesListingScreen extends StatelessWidget {
  const HeroesListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HeroRepository _heroesRepository = HeroRepository();

    return Scaffold(
      backgroundColor: AppColors.kColorDarkGrey,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderContent(),
            Expanded(
              child: FutureBuilder<Heroes>(
                future: _heroesRepository.getHeroes(),
                builder: (context, snapshot) {
                  if (snapshot.hasData && !snapshot.hasError) {
                    List<Result> heroes = snapshot.data!.heroList;

                    print(heroes);
                    return HeroesGrid(heroes: heroes);
                  } else {
                    /// TODO: RETURN PLACEHOLDER
                  }

                  print(snapshot.hasError);

                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
