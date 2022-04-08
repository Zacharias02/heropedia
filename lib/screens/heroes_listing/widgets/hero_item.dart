import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';
import 'package:heropedia/screens/global_widgets/custom_chip.dart';

class HeroItem extends StatelessWidget {
  final String heroId;
  final String imageUrl;
  final String heroFullName;
  final VoidCallback onTapped;

  const HeroItem({
    Key? key,
    required this.heroId,
    required this.imageUrl,
    required this.heroFullName,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 150,
        width: 100,
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: heroId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, __) => const Icon(
                    Icons.error,
                    size: 50,
                    color: AppColors.kColorWhite,
                  ),
                  loadingBuilder: (context, child, progress) {
                    if (progress != null) {
                      return Center(
                        child: CircularProgressIndicator(
                          value: (progress.expectedTotalBytes != null)
                              ? progress.cumulativeBytesLoaded /
                                  progress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    }

                    return child;
                  },
                ),
              ),
            ),
            CustomChip(content: heroFullName),
          ],
        ),
      ),
    );
  }
}
