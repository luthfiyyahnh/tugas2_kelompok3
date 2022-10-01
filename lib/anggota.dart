import 'package:flutter/material.dart';
import 'package:login_app/afi.dart';
import 'package:login_app/upi.dart';
import 'package:login_app/yasinda.dart';

class anggota extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final button1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
          onPressed: () {
            //navigator.push adalah fungsi di flutter untuk berpindah halaman
            Navigator.push(
              context,
              // DetailPage adalah halaman yang dituju
              MaterialPageRoute(builder: (context) => upi()),
            );
          },
          child: Text("LUTHFIYYAH NUR H")),
    );
    final button2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
          onPressed: () {
            //navigator.push adalah fungsi di flutter untuk berpindah halaman
            Navigator.push(
              context,
              // DetailPage adalah halaman yang dituju
              MaterialPageRoute(builder: (context) => yasinda()),
            );
          },
          child: Text("YASINDA ILMIA P")),
    );
    final button3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          //aksi yang akan dijalankan saat tombol diklik/ditekan
          onPressed: () {
            //navigator.push adalah fungsi di flutter untuk berpindah halaman
            Navigator.push(
              context,
              // DetailPage adalah halaman yang dituju
              MaterialPageRoute(builder: (context) => afi()),
            );
          },
          child: Text("M. Fatkhurozin Afi")),
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
        children: <Widget>[button1, button2, button3],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('DAFTAR ANGGOTA'),
      ),
      body: body,
    );
  }
}
