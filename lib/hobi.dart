import 'package:flutter/material.dart';

class hobi extends StatefulWidget {
  const hobi({Key? key}) : super(key: key);

  @override
  State<hobi> createState() => _hobiState();
}

class User {
  final String username;
  final String email;
  final String urlAvatar;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
  });
}

class _hobiState extends State<hobi> {
  List<User> users = [
    const User(
        username: 'Luthiyyah Nur Hasannah',
        email: 'Hobi : Jajan',
        urlAvatar: 'assets/alucard.jpg'),
    const User(
        username: 'Yasinda Ilmia Pakarti',
        email: 'Hobi : Belanja',
        urlAvatar: 'assets/yasinda.jpeg'),
    const User(
        username: 'M. Fathurozin afi',
        email: 'Hobi : Main Game',
        urlAvatar: 'assets/image3.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hobi Kami'),
      ),
      backgroundColor: const Color(0xFF1C2757),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.email),
            ),
          );
        },
      ),
    );
  }
}
