import 'package:flutter/material.dart';

class Anime {
  Anime({
    required this.name,
    required this.id,
    this.imageURL,
    this.image,
  });

  final String id;
  final String name;
  String? imageURL;
  String? image;

  ImageProvider get imageProvider {
    if (imageURL != null) {
      return NetworkImage(imageURL!);
    } else if (image != null) {
      return AssetImage(image!);
    } else {
      return const AssetImage('errorImage');
    }
  }
}
