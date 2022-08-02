class BookModel {
  String? id;
  String image;
  String secondimage;
  String title;
  String subtitle;
  bool favourate;

  BookModel(
      {this.id,
      required this.image,
      required this.secondimage,
      required this.title,
      required this.subtitle,
      required this.favourate});

  static List<BookModel> bookList = [
    BookModel(
        image: "assets/images/booksCoverPage/Book1.JPG",
        secondimage: "assets/images/booksCoverPage/Book1.JPG",
        title: "The King of Drug",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book2.JPG",
        secondimage: "assets/images/booksCoverPage/Book2.JPG",
        title: "Crack The Code",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book3.JPG",
        secondimage: "assets/images/booksCoverPage/Book3.JPG",
        title: "Imaginary Friend",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book4.JPG",
        secondimage: "assets/images/booksCoverPage/Book4.JPG",
        title: "Book4",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book5.JPG",
        secondimage: "assets/images/booksCoverPage/Book5.JPG",
        title: "Book5",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book6.JPG",
        secondimage: "assets/images/booksCoverPage/Book6.JPG",
        title: "Book6",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        image: "assets/images/booksCoverPage/Book7.JPG",
        secondimage: "assets/images/booksCoverPage/Book7.JPG",
        title: "Book7",
        subtitle: "subtitle",
        favourate: false),
  ];


///////// All Book list///////
  static List<BookModel> allBookList = [
     BookModel(
        id: 'PHY9',
        image: "assets/images/phyBookCover/phy-9th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Physics 9',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'PHY10',
        image: "assets/images/phyBookCover/phy-10th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Physics 10',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'PHY11',
        image: "assets/images/phyBookCover/phy-11th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Physics 11",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'PHY12',
        image: "assets/images/phyBookCover/phy-12th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Physics 12",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        id: 'CHEM9',
        image: "assets/images/chemBookCover/chem-9th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Chemistry 9',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'CHEM10',
        image: "assets/images/chemBookCover/chem-10th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Chemistry 10',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'CHEM11',
        image: "assets/images/chemBookCover/chem-11th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Chemistry 11",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'CHEM12',
        image: "assets/images/chemBookCover/chem-12th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Chemistry 12",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        id: 'MTH9',
        image: "assets/images/classesBookCover/Mathematics-9th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Math 9',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'MTH10',
        image: "assets/images/classesBookCover/Mathematics-10th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Math 10',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'MTH11',
        image: "assets/images/classesBookCover/Mathematics-11th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Math 11",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        id: 'MTH12',
        image: "assets/images/classesBookCover/Mathematics-12th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Math 12",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
        id: 'BIO9',
        image: "assets/images/bioBookCover/Bio-9th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Biology 9',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'BIO10',
        image: "assets/images/bioBookCover/Bio-10th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: 'Biology 10',
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'BIO11',
        image: "assets/images/bioBookCover/Bio-11th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Biology 11",
        subtitle: "subtitle",
        favourate: false),
    BookModel(
      id: 'BIO12',
        image: "assets/images/bioBookCover/Bio-12th.jpeg",
        secondimage: "assets/images/book_icon2.png",
        title: "Biology 12",
        subtitle: "subtitle",
        favourate: false),
    
  ];


  static List<BookModel> newBookList = [
    BookModel(
        image: "assets/images/booksCoverPage/Book8.JPG",
        secondimage: "assets/images/booksCoverPage/Book8.JPG",
        title: "The Worst",
        subtitle: "subtitle",
        favourate: false),
  ];
}
