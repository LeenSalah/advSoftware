import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArticlesCard extends StatefulWidget {
  final String title;
  const ArticlesCard({super.key, required this.title});

  @override
  State<ArticlesCard> createState() => _ArticlesCardState();
}

class _ArticlesCardState extends State<ArticlesCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 95.w,
          height: 15.h,
          child: Column(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(9.0),child: Image.asset('assets/articles.jpg', fit: BoxFit.fitWidth, width: 95.w, height: 15.h,)),
            ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title, style: TextStyle(fontSize: 18.sp),),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: isFavorite == false
                      ? const Icon(
                    Icons.favorite_border_outlined,
                    size: 29,
                  )
                      : const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 29,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
