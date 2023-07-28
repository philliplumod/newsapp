import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String? imageUrl;
  final String? label;

  const CategoryTile({super.key, this.imageUrl, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              imageUrl!,
              width: 120,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 8, top: 8),
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(label!,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
