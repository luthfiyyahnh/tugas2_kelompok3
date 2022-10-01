import 'package:flutter/material.dart';
import 'package:login_app/kalkulator/screens/home_screen.dart';
import 'package:login_app/anggota.dart';
import 'package:login_app/upi.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/upn.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Semoga harimu senin selalu',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    final button = Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
          onPressed: () {
            //navigator.push adalah fungsi di flutter untuk berpindah halaman
            Navigator.push(
              context,
              // DetailPage adalah halaman yang dituju
              MaterialPageRoute(builder: (context) => MyHomeScreen()),
            );
          },
          child: Text("Kalkulator")),
    );
    final button1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
          onPressed: () {
            //navigator.push adalah fungsi di flutter untuk berpindah halaman
            Navigator.push(
              context,
              // DetailPage adalah halaman yang dituju
              MaterialPageRoute(builder: (context) => anggota()),
            );
          },
          child: Text("Anggota")),
    );
    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem, button1, button],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang'),
      ),
      body: body,
    );
  }
}
