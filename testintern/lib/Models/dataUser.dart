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
    name: 'user',
    email: 'user',
    image: "https://picsum.photos/200",
  ),
  User(
    name: 'John Doe',
    email: 'b5qzZ@example.com',
    image: "https://picsum.photos/201",
  ),
  User(
    name: 'Jane Smith',
    email: 'janesmith@example.com',
    image: "https://picsum.photos/202",
  ),
  User(
    name: 'Aseptio',
    email: 'aseptio@example.com',
    image: "https://picsum.photos/203",
  ),
  User(
    name: 'Alexandre',
    email: 'alexandre@example.com',
    image: "https://picsum.photos/204",
  ),
  User(
    name: 'Benjamin',
    email: 'benjamin@example.com',
    image: "https://picsum.photos/205",
  ),
  User(
    name: 'Chris',
    email: 'chris@example.com',
    image: "https://picsum.photos/206",
  ),
  User(
    name: 'Daniel',
    email: 'daniel@example.com',
    image: "https://picsum.photos/207",
  ),
  User(
    name: 'Felix',
    email: 'felix@example.com',
    image: "https://picsum.photos/208",
  ),
  User(
    name: 'Gregory',
    email: 'gregory@example.com',
    image: "https://picsum.photos/209",
  ),
];
