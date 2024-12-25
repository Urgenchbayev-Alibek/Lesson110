import 'package:flutter/material.dart';


class CategoryItemMain extends StatelessWidget {
  const CategoryItemMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            "Seafood",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: const Image(
                image: AssetImage("assets/images/seafood.png"),
              ),
            ),
          ),
        )
      ],
    );
  }
}