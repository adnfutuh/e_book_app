class BookList {
  String imageUrl;
  String writters;
  String title;
  BookList(
      {required this.imageUrl, required this.writters, required this.title});
}

List<BookList> bookList = [
  BookList(
    imageUrl: 'assets/images/trendingbook_1.png',
    writters: 'Guy Kawasaki',
    title: 'Enchantment',
  ),
  BookList(
    imageUrl: 'assets/images/trendingbook_2.png',
    writters: 'Aaron Mahnke',
    title: 'Lore',
  ),
  BookList(
    imageUrl: 'assets/images/recentbook_2.png',
    writters: 'Andy Weir',
    title: 'The Martian',
  ),
];
