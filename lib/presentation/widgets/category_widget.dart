import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final imageUrl;
  final label;

  const CategoryTile({super.key, this.imageUrl, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: 120,
            height: 60,
          ),
        ],
      ),
    );
  }
}
