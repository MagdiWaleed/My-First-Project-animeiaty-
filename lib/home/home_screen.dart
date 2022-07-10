import 'package:animeiaty/anime_item/anime_item_screen.dart';
import 'package:animeiaty/app_data.dart';
import 'package:animeiaty/widget/category_item.dart';
import 'package:animeiaty/screen_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          title: "Wellcome",
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimeItemScreen(
                      title: Anime_Data[i].name,
                      image: Anime_Data[i].imageProvider,
                      id: Anime_Data[i].id,
                    ),
                  ),
                );
              },
              child: CategoryItem(
                name: Anime_Data[i].name,
                image: Anime_Data[i].imageProvider,
              ),
            );
          },
          itemCount: Anime_Data.length,
        ),
      ),
    );
  }
}
