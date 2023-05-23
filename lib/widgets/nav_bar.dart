import 'package:flutter/material.dart';


class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 0),
      unselectedLabelStyle: const TextStyle(fontSize: 0),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Navigation.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Bell.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Heart.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/User.png',
            width: 24,
            height: 24,
          ),
          label: '',
        ),
      ],
    );
  }
}
