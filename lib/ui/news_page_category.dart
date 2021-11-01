import 'package:flutter/cupertino.dart';

class NewsPageCategory extends StatefulWidget {
  final String categoryName;

  const NewsPageCategory({Key? key, required this.categoryName})
      : super(key: key);

  @override
  _NewsPageCategoryState createState() => _NewsPageCategoryState();
}

class _NewsPageCategoryState extends State<NewsPageCategory> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
