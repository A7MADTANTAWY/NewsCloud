import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/artical_model.dart';
import 'package:news_cloud/models/horezpotal_card_model.dart';
import 'package:news_cloud/models/vertical_card_model.dart';
import 'package:news_cloud/services/news_services.dart';
import 'package:news_cloud/views/vertecal_items_slivers.dart';
import 'package:news_cloud/widgets/horezontal_cards.dart';
import 'package:news_cloud/widgets/verticale_cards.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HorizontalCardModel> horezontalcarditems = [
    HorizontalCardModel(image: 'assets/business.avif', title: 'business'),
    HorizontalCardModel(
        image: 'assets/entertaiment.avif', title: 'entertaiment'),
    HorizontalCardModel(image: 'assets/general.avif', title: 'general'),
    HorizontalCardModel(image: 'assets/health.avif', title: 'health'),
    HorizontalCardModel(image: 'assets/science.avif', title: 'bescienceds'),
    HorizontalCardModel(image: 'assets/sports.avif', title: 'sports'),
    HorizontalCardModel(image: 'assets/technology.jpeg', title: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Cloud',
              style: TextStyle(fontSize: 23, color: Color(0xffEB5B00)),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: horezontalcarditems.length,
                itemBuilder: (context, index) {
                  return HorizontalCards(
                      horizontalities: horezontalcarditems[index]);
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          VertecalItemsSlivers()
        ],
      ),
    );
  }
}
