import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String? imageUrl;
  final String? label;

  const CategoryTile({super.key, this.imageUrl, this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imageUrl!,
          width: 120,
          height: 60,
        ),
      ],
    );
  }
}
