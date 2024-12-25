import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image(
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}