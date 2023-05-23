class Book {
  final String name, image, author;

  Book({
    required this.author,
    required this.name,
    required this.image,
  });
}

List<Book> popularBooks = [
  Book(
    name: 'Conversations With Friends',
    image: 'assets/images/book1.png',
    author: 'Sally Rooney',
  ),
  Book(
    name: 'This Is How It Always Is',
    image: 'assets/images/book2.png',
    author: 'Laurie Frankle',
  ),
  Book(
    name: 'A Teaspoon of Earth and Sea',
    image: 'assets/images/book3.png',
    author: 'Dina Nayeri',
  ),
];

List<Book> recommededBooks = [
  Book(
    name: 'Grief Cottage',
    image: 'assets/images/recommended1.png',
    author: 'Gail GodWin',
  ),
  Book(
    name: 'Shadowless',
    image: 'assets/images/recommended2.png',
    author: 'Hasan Ali Toptas',
  ),
  Book(
    name: 'Vegan Eat',
    image: 'assets/images/recommended3.png',
    author: 'Smith & Daughters',
  ),
];

List<Book> similarBooks = [
  Book(
    name: 'WarLight',
    image: 'assets/images/Thumb01.png',
    author: 'Micheal Ondaatie',
  ),
  Book(
    name: 'Brother',
    image: 'assets/images/Image.png',
    author: 'David Chariandy',
  ),
  Book(
    name: 'A Terrible Country',
    image: 'assets/images/Img2.png',
    author: 'Keth Gessen',
  ),
];
