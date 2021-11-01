import 'package:flutter/material.dart';
import 'package:news_app/model/articles.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/utils/theme.dart';
import 'package:news_app/widgets/news_item_horizontal.dart';

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
                      '18 Oktober 2021',
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
          //  ini merupakan widget TopHeadline untuk horizontal item
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
          )
        ],
      ),
    );
  }
}
