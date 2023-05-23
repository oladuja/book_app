import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String title, image;

  const DetailItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          width: 30,
          height: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
