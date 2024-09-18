import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/artical_model.dart';
import 'package:news_cloud/services/news_services.dart';
import 'package:news_cloud/widgets/verticale_cards.dart';

class VertecalItemsSlivers extends StatefulWidget {
  const VertecalItemsSlivers({super.key});

  @override
  State<VertecalItemsSlivers> createState() => _VertecalItemsSliversState();
}

class _VertecalItemsSliversState extends State<VertecalItemsSlivers> {
  List<ArticleModel> artileitems = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    newMethod();
  }

  Future<void> newMethod() async {
    artileitems = await NewsServices(dio: Dio()).getnews();
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: artileitems.length,
              (context, index) {
                return VerticalCards(articleModel: artileitems[index]);
              },
            ),
          );
  }
}
