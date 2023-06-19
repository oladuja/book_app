import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/detail_item.dart';
import '../widgets/display_book.dart';
import '../widgets/display_type.dart';
import '../widgets/preview_container.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PreviewContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Light between Oceans',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.bookmark_outline,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  const Text(
                    'Author: M.L. Stedman',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    'Fiction Novel',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          5,
                          (index) => Icon(
                            !(index == 4) ? Icons.star : Icons.star_half,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        '4.5',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        '1,353 reviews',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DetailItem(
                          title: 'See Reviews',
                          image: 'assets/images/Chat.png',
                        ),
                        DetailItem(
                          title: 'Read Book',
                          image: 'assets/images/Book.png',
                        ),
                        DetailItem(
                          title: 'Listen Book',
                          image: 'assets/images/Speakers.png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  const Text(
                    'PROLOGUE',
                    style: TextStyle(
                      letterSpacing: 1.8,
                      color: Color(0XFF7C7C7C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'A captivating, beautiful, and stunningly accomplished debut novel that opens in 1918 Australia - the story of a lighthouse keeper and his wife who make one devastating choice that forever changes two worlds.',
                    style: TextStyle(
                      letterSpacing: 1.2,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 15),
                  const DisplayType(title: 'Some Similar Books'),
                  DisplayBook(booksToDisplay: similarBooks),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
