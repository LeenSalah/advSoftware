import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/common/article_card.dart';
import '../models/articles_model.dart';

class MentalHealth extends StatefulWidget {
  static String route = 'mentalHealth';
  const MentalHealth({super.key});

  @override
  State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  List<ArticlesModel> articles = [];
  @override
  void initState() {
    fillArticles();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('read about mental health'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(CupertinoIcons.heart_fill, color: Colors.black,),
            )
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index){
          return ArticlesCard(title: articles[index].title);
        },
        itemCount: articles.length,),
      ),
    );
  }
  
  void fillArticles(){
    articles.add(ArticlesModel('About mental health', '', '+962796937812'));
    articles.add(ArticlesModel('Coping with Depression', '', '+962796937812'));
    articles.add(ArticlesModel('Social Anxiety Disorder', '', '+962796937812'));
    articles.add(ArticlesModel('Learn about ADHD', '', '+962796937812'));
    articles.add(ArticlesModel('Exams stress', '', '+962796937812'));
    articles.add(ArticlesModel('How to manage stress', '', '+962796937812'));
  }
}
