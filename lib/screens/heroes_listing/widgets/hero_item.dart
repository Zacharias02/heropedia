import 'package:flutter/material.dart';

class HeroItem extends StatelessWidget {
  const HeroItem({
    Key? key,
    required this.heroId,
    required this.imageUrl,
    required this.heroFullName,
    required this.onTapped,
  }) : super(key: key);

  final String heroId;
  final String imageUrl;
  final String heroFullName;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Hero(
            tag: heroId,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
