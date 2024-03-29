class Article {
  final String name;
  final String title;
  final String imageUrl;
  final int comments;
  final int view;
  final String date;
  final String web;
  final String location;
  final String category;
  bool isSelected;

  Article({
    required this.isSelected,
    required this.category,
    required this.location,
    required this.name,
    required this.web,
    required this.title,
    required this.comments,
    required this.view,
    required this.date,
    required this.imageUrl,
  });
}

List<Article> articles = [
  Article(
    isSelected: false,
    category: "funny",
    location: "down town",
    web: "www.google.com",
    name: 'Fahad Hussain',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 333,
    comments: 7,
    date: "22 hrs",
    imageUrl: 'assets/Images/john.png',
  ),
  Article(
    isSelected: false,
    category: "funny",
    location: "down town",
    web: "www.google.com",
    name: 'Fahad Hussain',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 333,
    comments: 7,
    date: "22 hrs",
    imageUrl: 'assets/Images/john.png',
  ),
  Article(
    isSelected: false,
    category: "funny",
    location: "down town",
    web: "www.google.com",
    name: 'Fahad Hussain',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 333,
    comments: 7,
    date: "22 hrs",
    imageUrl: 'assets/Images/john.png',
  ),
  Article(
    isSelected: false,
    category: "WTF",
    location: "down town",
    web: "www.google.com",
    name: 'Fahad Hussain',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 33,
    comments: 7,
    date: "8hrs",
    imageUrl: 'assets/Images/natasha.png',
  ),
  Article(
    isSelected: false,
    category: "Girls",
    location: "down town",
    web: "www.google.com",
    name: 'Subhan Ali',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "7hrs",
    imageUrl: 'assets/Images/oliva.png',
  ),
  Article(
    isSelected: false,
    category: "Meme",
    location: "down town",
    web: "www.google.com",
    name: 'Arbab Shujat',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "25 / 10 / 2021",
    imageUrl: 'assets/Images/john.png',
  ),
  Article(
    isSelected: false,
    category: "Gifs",
    location: "down town",
    web: "www.google.com",
    name: 'Subhan Ali',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "4hrs",
    imageUrl: 'assets/Images/john.png',
  ),
  Article(
    isSelected: false,
    category: "Celebrity",
    location: "down town",
    web: "www.google.com",
    name: 'Arbab Shujat',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "25 / 10 / 2021",
    imageUrl: 'assets/Images/natasha.png',
  ),
  Article(
    isSelected: false,
    category: "Music",
    location: "down town",
    web: "www.google.com",
    name: 'Arbab Shujat',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "10hrs",
    imageUrl: 'assets/Images/oliva.png',
  ),
  Article(
    isSelected: false,
    category: "Funny",
    location: "down town",
    web: "www.google.com",
    name: 'Subhan Ali',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "0hrs",
    imageUrl: 'assets/Images/natasha.png',
  ),
  Article(
    isSelected: false,
    category: "beauity",
    location: "down town",
    web: "www.google.com",
    name: 'Arbab Shujat',
    title: 'Certainty listening no behavior existence assurance situation',
    view: 387,
    comments: 24,
    date: "25hrs",
    imageUrl: 'assets/Images/john.png',
  ),
];

class Boards {
  String title;
  String Subtitle;
  String iamgeUrl;

  Boards({required this.title, required this.Subtitle, required this.iamgeUrl});
}

List<Boards> boards = [
  Boards(
      title: "Party And Fun",
      Subtitle: "1532 Memeber",
      iamgeUrl: "assets/Images/b1.png"),
  Boards(
      title: "cHAT AT NIGHt",
      Subtitle: "1276 Memeber",
      iamgeUrl: "assets/Images/b2.png"),
  Boards(
      title: "Love & Romance",
      Subtitle: "1976 Memeber",
      iamgeUrl: "assets/Images/b3.png"),
  Boards(
      title: "Motivation",
      Subtitle: "6799 Memeber",
      iamgeUrl: "assets/Images/b4.png"),
  Boards(
      title: "Technology",
      Subtitle: "27368 Memeber",
      iamgeUrl: "assets/Images/b5.png"),
  Boards(
      title: "Sports",
      Subtitle: "9074 Memeber",
      iamgeUrl: "assets/Images/b6.png"),
  Boards(
      title: "Social Talking",
      Subtitle: "2837 Memeber",
      iamgeUrl: "assets/Images/b7.png"),
  Boards(
      title: "Success & Failure",
      Subtitle: "87904 Memeber",
      iamgeUrl: "assets/Images/b8.png"),
  Boards(
      title: "Helping Poor",
      Subtitle: "1532 Memeber",
      iamgeUrl: "assets/Images/b9.png"),
];
