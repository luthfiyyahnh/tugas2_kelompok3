import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas2_kelompok3/anggota.dart';
import 'package:tugas2_kelompok3/hobi.dart';
import 'package:tugas2_kelompok3/stopwatch.dart';
import 'login_page.dart';
import 'package:tugas2_kelompok3/kalkulator/screens/home_screen.dart';

class homePage extends StatefulWidget {
  static String tag = 'home-page';
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Home'),
      ),
      backgroundColor: const Color(0xFF1C2757),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Selamat Datang",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 72.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/upn.png'),
                  ),
                ),
                const Center(
                  child: Text(
                    "Selamat bergabung di aplikasi suka-suka karya kami. Dimohon untuk beri nilai 100 untuk projek ini. xixixi ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => anggota()));
                    },
                    child: const Text('Anggota'),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hobi()));
                    },
                    child: const Text('Hobi'),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeApp()),
                      );
                    },
                    child: const Text('Stopwatch'),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomeScreen(),
                        ),
                      );
                    },
                    child: const Text('Kalkulator'),
                  ),
                ),
                SizedBox(
                  //ini bagian tombol logout, disini langsung diarahkan ke halaman login
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.resolveWith<double?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) return 16;
                        return null;
                      }),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(
                          builder: (context) => LoginPage(), //
                        ),
                      );
                    },
                    child: const Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
