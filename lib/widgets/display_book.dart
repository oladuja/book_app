import 'package:flutter/material.dart';

import '../models/book.dart';

class DisplayBook extends StatelessWidget {
  final List<Book> booksToDisplay;

  const DisplayBook({
    super.key,
    required this.booksToDisplay,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        children: List<Widget>.generate(
          popularBooks.length,
          (index) => Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(booksToDisplay[index].image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  booksToDisplay[index].name,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'by ${booksToDisplay[index].author}',
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
