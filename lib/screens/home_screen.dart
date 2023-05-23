import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/display_type.dart';
import '../widgets/header.dart';
import '../widgets/nav_bar.dart';
import '../widgets/display_book.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).padding.top,
              ),
              const SearchBar(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Header(),
              const DisplayType(title: 'Popular'),
              DisplayBook(booksToDisplay: popularBooks),
              const DisplayType(title: 'Recommended'),
              DisplayBook(booksToDisplay: recommededBooks),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
