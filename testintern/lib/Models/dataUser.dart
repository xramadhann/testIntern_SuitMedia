// ignore_for_file: file_names

class User {
  String name;
  String email;
  final String image;
  User({
    required this.name,
    required this.email,
    required this.image,
  });
}

List<User> allUsers = [
  User(
    name: 'John Doe',
    email: 'b5qzZ@example.com',
    image: "https://picsum.photos/200",
  ),
  User(
    name: 'Jane Smith',
    email: 'janesmith@example.com',
    image: "https://picsum.photos/201",
  ),
];
