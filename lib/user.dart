class User {
  final String name;
  final int id;
  int? totalAmount;
  bool isLeading;
  int currAmount;
  String? imageURL;

  User({
    required this.id,
    required this.name,
    this.currAmount = 0,
    this.isLeading = true,
    this.imageURL,
  });
}
