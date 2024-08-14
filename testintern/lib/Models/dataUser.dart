// ignore_for_file: file_names

class User {
  final String name;
  final String email;
  final String phone;
  final String image;
  const User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.image});
}

const allUsers = [
  User(
    name: 'John Doe',
    email: 'b5qzZ@example.com',
    phone: '1234567890',
    image: "https://picsum.photos/200",
  ),
  User(
    name: 'Jane Smith',
    email: 'janesmith@example.com',
    phone: '0987654321',
    image: "https://picsum.photos/201",
  ),
];
