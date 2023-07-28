import 'package:flutter/material.dart';
import 'package:newsapp/Data/Model/category.dart';
import 'package:newsapp/Data/helper/data.dart';
import 'package:newsapp/presentation/widgets/category_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 100,
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoryTile(
                  label: categories[index].label,
                  imageUrl: categories[index].imageUrl,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: 'Flutter',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'News',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
