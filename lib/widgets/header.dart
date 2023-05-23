import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const DetailScreen(),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/Clip.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
