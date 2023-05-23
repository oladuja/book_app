import 'package:flutter/material.dart';

class PreviewContainer extends StatelessWidget {
  const PreviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/detail.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 10,
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
