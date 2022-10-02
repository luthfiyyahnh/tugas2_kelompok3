import 'package:flutter/material.dart';

class hobi extends StatefulWidget {
  const hobi({Key? key}) : super(key: key);

  @override
  State<hobi> createState() => _hobiState();
}

class User {
  final String username;
  final String hobi;
  final String urlAvatar;

  const User({
    required this.username,
    required this.hobi,
    required this.urlAvatar,
  });
}

class _hobiState extends State<hobi> {
  //isi konten
  List<User> users = [
    const User(
        username: 'Luthiyyah Nur Hasannah',
        hobi: 'Hobi : Jajan',
        urlAvatar: 'assets/alucard.jpg'),
    const User(
        username: 'Yasinda Ilmia Pakarti',
        hobi: 'Hobi : Belanja',
        urlAvatar: 'assets/yasinda.jpeg'),
    const User(
        username: 'M. Fathurozin afi',
        hobi: 'Hobi : Main Game',
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
        //ini untuk membuat msing masing konten jadi vertikal
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                //ini yang bikin jadi float left
                radius: 28,
                backgroundImage: AssetImage(user.urlAvatar),
              ),
              title: Text(user.username),
              subtitle: Text(user.hobi),
            ),
          );
        },
      ),
    );
  }
}
