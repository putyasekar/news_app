import 'package:flutter/material.dart';
import 'package:news_app/model/articles.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
