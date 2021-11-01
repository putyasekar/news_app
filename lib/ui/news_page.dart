import 'package:flutter/material.dart';
import 'package:news_app/model/articles.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/utils/theme.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:news_app/widgets/news_item_horizontal.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'news_page_category.dart';

class NewsPage extends StatefulWidget {
  final List<Article> articles;
  final List<Category> categories;

  NewsPage(this.articles, this.categories);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://media-exp1.licdn.com/dms/image/C5603AQE01nSH7JQImA/profile-displayphoto-shrink_800_800/0/1617547764581?e=1640217600&v=beta&t=_o8ho8bTT2atGis_ipqJ_PmBYLxicag5ndTM3yoi0pA'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '18 October 2021',
                      style: authorDateArticle.copyWith(fontSize: 14),
                    )
                  ],
                ),
                Icon(
                  Icons.search,
                  size: 24,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Breaking News',
              style: titleHome,
            ),
          ),
          //  this was TopHeadline's widget for horizontal item
          Container(
            margin: EdgeInsets.all(20),
            height: 200,
            child: PageView.builder(
                itemCount: widget.articles.length,
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                itemBuilder: (context, index) {
                  return NewsHeadLine(article: widget.articles[index]);
                }),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Category',
              style: titleArticle.copyWith(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          //item for category
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            child: ListView.builder(
                itemCount: widget.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NewsPageCategory(
                                    categoryName:
                                    widget.categories[index].categoryName,
                                  )));
                    },
                    child: CategoryItem(
                        imgUrl: widget.categories[index].imgUrl,
                        categoryName: widget.categories[index].categoryName),
                  )
                  ,
                  );
                }),
          ),
          SizedBox(height: 10,),
          //list article
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Top Headline',
              style: titleArticle.copyWith(
                  fontSize: 18
              ),),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(itemCount: widget.articles.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return NewsItem(article: widget.articles[index]);
                }),
          )
        ],
      ),
    );
  }

  String timeUntil(DateTime parse) {
    return timeago.format(parse, allowFromNow: true, locale: 'id');
  }
}
