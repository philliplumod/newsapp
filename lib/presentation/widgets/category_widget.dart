import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String? imageUrl;
  final String? label;
  final VoidCallback? ontap;

  const CategoryTile({super.key, this.imageUrl, this.label, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap;
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imageUrl!,
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                alignment: Alignment.center,
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
      ),
    );
  }
}
