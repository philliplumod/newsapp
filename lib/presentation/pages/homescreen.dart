import 'package:flutter/material.dart';
import 'package:newsapp/Data/Model/article.dart';
import 'package:newsapp/Data/Model/category.dart';
import 'package:newsapp/Data/helper/article.dart';
import 'package:newsapp/Data/helper/data.dart';
import 'package:newsapp/presentation/widgets/blog_widget.dart';
import 'package:newsapp/presentation/widgets/category_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles = [];

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    Article article = Article();
    await article.getNews();
    articles = article.article;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // categories
                    SizedBox(
                      height: 60,
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
                    ),

                    //blogs
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: articles.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return BlogTile(
                              imageUrl: articles[index].urlToImage,
                              title: articles[index].title,
                              desc: articles[index].description);
                        },
                      ),
                    )
                  ],
                ),
              ),
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
