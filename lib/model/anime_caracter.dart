import 'package:flutter/material.dart';

class AnimeCaracter {
  AnimeCaracter({
    required this.des,
    required this.id,
    this.imageURL,
    this.image,
  });
  final String des;
  final String id;
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
