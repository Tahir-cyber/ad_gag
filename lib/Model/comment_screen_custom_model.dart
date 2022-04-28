import 'package:flutter/material.dart';

class CommentScreenCustomModel {
  final String name;
  final String desc;
  final String imageUrl;
  final Icon icon;
  final int view;
  final String date;

  final String category;
  CommentScreenCustomModel({
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.icon,
    required this.view,
    required this.date,
    required this.category,
  });
}

List<CommentScreenCustomModel> commentsModel = [
  CommentScreenCustomModel(
    name: 'James Dean',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/1.png',
    icon: Icon(Icons.favorite_border),
    view: 437,
    date: "22m",
    category: "funny",
  ),
  CommentScreenCustomModel(
    name: 'Adam Scott',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/2.png',
    icon: Icon(Icons.favorite_border),
    view: 1,
    date: "8hrs",
    category: "WTF",
  ),
  CommentScreenCustomModel(
      name: 'Natasha Romanov',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/3.png',
      icon: Icon(Icons.favorite_border),
      view: 789,
      date: "6hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Amelia',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/4.png',
      icon: Icon(Icons.favorite_border),
      view: 456,
      date: "1hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: ""),
  CommentScreenCustomModel(
      name: 'Isabella',
      desc: 'Certainty listening no behavior existence assurance situation',
      imageUrl: 'assets/Images/5.png',
      icon: Icon(Icons.favorite_border),
      view: 38,
      date: "7hrs",
      category: "")
];

//Notifivation custom model

class NotificationCustomMOdel {
  final String name;
  final String desc;
  final String imageUrl;
  final String time;

  NotificationCustomMOdel({
    required this.name,
    required this.desc,
    required this.imageUrl,
    required this.time,
  });


}

List<NotificationCustomMOdel> notificationCustomModel=[
  NotificationCustomMOdel(
    name: 'James Dean',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/1.png',
    time: "22m",
  ),

  NotificationCustomMOdel(
    name: 'Adam Scott',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/2.png',
    time: "8hrs",
  ),

  NotificationCustomMOdel(
    name: 'Natasha Romanov',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/3.png',
    time: "6hrs",
  ),

  

  NotificationCustomMOdel(
    name: 'Amelia',
    desc: 'Certainty listening no behavior existence assurance situation',
    imageUrl: 'assets/Images/4.png',
    time: "1hrs",
  ),
];
