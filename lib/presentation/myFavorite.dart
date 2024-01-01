import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteArticles extends StatefulWidget {
  const FavoriteArticles({super.key});

  @override
  State<FavoriteArticles> createState() => _FavoriteArticlesState();
}

class _FavoriteArticlesState extends State<FavoriteArticles> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Center(
          child: Text(
            "My Favorite Articles",
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Color(0xFF371942),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(CupertinoIcons.heart_fill, color: Color(0xFF816E94),),
          )
        ],
      ),
    );
  }
}
