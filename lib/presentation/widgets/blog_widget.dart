import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BlogTile extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String desc;
  const BlogTile(
      {super.key, this.imageUrl, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl!,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 17),
        ),
        Text(desc),
      ],
    );
  }
}
