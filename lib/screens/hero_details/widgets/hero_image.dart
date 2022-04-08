import 'package:flutter/material.dart';
import 'package:heropedia/constants/app_colors.dart';

class HeroCoverImage extends StatelessWidget {
  final String heroImageUrl;
  final String heroTag;

  const HeroCoverImage({
    Key? key,
    required this.heroImageUrl,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 150,
      child: Hero(
        tag: heroTag,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            heroImageUrl,
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
    );
  }
}
