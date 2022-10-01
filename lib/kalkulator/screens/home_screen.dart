import 'package:flutter/material.dart';
import 'package:login_app/kalkulator/screens/input_section.dart';
import 'package:login_app/kalkulator/screens/keyboard_section.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Column(
        children: [
          const MyInputSection(),
          SizedBox(
            width: double.infinity,
            height: 1,
            child: ColoredBox(color: Theme.of(context).colorScheme.secondary),
          ),
          const MyKeyboardSection(),
        ],
      ),
    );
  }
}
