import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.name,
    required this.image,
  });

  final String name;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 200,
            width: 200,
            child: Image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(.35),
              borderRadius: BorderRadius.circular(20)),
        ),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(name),
            )
            // Text(
            //   name,
            //   style: TextStyle(
            //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            // ),
            ),
      ],
    );
  }
}
