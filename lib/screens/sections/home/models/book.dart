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
    writters: 'Aaron mahnke',
    title: 'Lore',
  ),
  BookList(
    imageUrl: 'assets/images/trendingbook_3.png',
    writters: 'Spencer Johnson, M.D',
    title: 'Who Moved My Cheese',
  ),
];
