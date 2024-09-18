import 'package:flutter/material.dart';
import 'package:news_cloud/models/artical_model.dart';

class VerticalCards extends StatelessWidget {
  final ArticleModel articleModel;
  const VerticalCards({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 18),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(articleModel.image ??
                    'https://redem.io/wp-content/uploads/2020/06/Redem-Error.jpeg'),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                Text(
                  articleModel.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  articleModel.subtitle ?? 'not description',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff526D82),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
