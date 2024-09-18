import 'package:flutter/material.dart';
import 'package:news_cloud/models/horezpotal_card_model.dart';

class HorizontalCards extends StatelessWidget {
  final HorizontalCardModel horizontalities;
  const HorizontalCards({super.key, required this.horizontalities});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 90,
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xff5C5470),
          image: DecorationImage(
            image: AssetImage(horizontalities.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            horizontalities.title,
            style: const TextStyle(fontSize: 20, color: Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
