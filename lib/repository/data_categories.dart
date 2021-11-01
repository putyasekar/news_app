import 'package:news_app/model/category.dart';

List<Category> getCategories() {
  List<Category> categories = [
    Category(
        categoryName: 'Health',
        imgUrl: 'https://images.unsplash.com/photo-1505576399279-565b52d4ac71?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGVhbHRofGVufDB8fDB8fA%3D%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'Entertainment',
        imgUrl: 'https://images.unsplash.com/photo-1603739903239-8b6e64c3b185?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZW50ZXJ0YWlubWVudHxlbnwwfHwwfHw%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'General',
        imgUrl: 'https://images.unsplash.com/photo-1489533119213-66a5cd877091?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2VuZXJhbHxlbnwwfHwwfHw%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'Business',
        imgUrl: 'https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YnVzaW5lc3N8ZW58MHx8MHx8&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'Science',
        imgUrl: 'https://images.unsplash.com/photo-1532094349884-543bc11b234d?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2NpZW5jZXxlbnwwfHwwfHw%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'Technology',
        imgUrl: 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGVjaG5vbG9neXxlbnwwfHwwfHw%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
    Category(
        categoryName: 'Sports',
        imgUrl: 'https://images.unsplash.com/photo-1517649763962-0c623066013b?'
            'ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNwb3J0fGVufDB8fDB8fA%3D%3D&'
            'ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
  ];
  return categories;
}
