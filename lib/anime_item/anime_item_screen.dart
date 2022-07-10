import 'dart:ui';

import 'package:animeiaty/app_data.dart';
import 'package:animeiaty/widget/category_item.dart';
import 'package:flutter/material.dart';

class AnimeItemScreen extends StatelessWidget {
  final String? title;
  final ImageProvider image;
  final String? id;

  AnimeItemScreen({required this.title, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    final filtter = Anime_Caracter_Data.where((e) {
      return e.id.contains(id!);
    }).toList();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
              centerTitle: true,
              title: Text(title!),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              )
            ])),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, i) {
                return CategoryItem(
                  name: filtter[i].des,
                  image: filtter[i].imageProvider,
                );
              }, childCount: filtter.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            ),
          ],
        ),
      ),
    );
  }
}
