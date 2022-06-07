import 'package:expense_divider/user.dart';

class TotalUsers {
  final List<User> totalUsers = users;
}

List<User> users = [
  User(
      id: 001,
      name: 'Shamim',
      currAmount: 40,
      isLeading: true,
      imageURL: 'images/pic1.jpg'),
  User(
      id: 002,
      name: 'Aziz',
      currAmount: 20,
      isLeading: false,
      imageURL: 'images/pic2.jpg'),
  User(
      id: 003,
      name: 'Shoaib',
      currAmount: 30,
      isLeading: false,
      imageURL: 'images/pic2.jpg'),
];
