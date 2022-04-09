import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_text_style.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Column(
          children: [
            Text(
              'Choose your funky superhero'.toUpperCase(),
              style: AppTextStyle.kTextHeader1,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'You can look all superheroes and villians data across all universes.',
                style: AppTextStyle.kTextRegular,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
