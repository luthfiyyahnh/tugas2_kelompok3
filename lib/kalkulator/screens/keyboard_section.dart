import 'package:flutter/material.dart';
import 'package:login_app/kalkulator/screens/input_section.dart';
import 'package:login_app/kalkulator/widget/calculator_button.dart';
import 'package:math_expressions/math_expressions.dart';

class MyKeyboardSection extends StatelessWidget {
  const MyKeyboardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '(';
                },
                child: const Text(
                  '(',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += ')';
                },
                child: const Text(
                  ')',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                  onPressed: () {
                    final String value = MyInputSection.input.value;

                    MyInputSection.input.value = '';
                    value.substring(0, value.length - 1);
                  },
                  child: const Icon(Icons.backspace_outlined)),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value = '';
                },
                child: const Text(
                  'C',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '7';
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '8';
                },
                child: const Text(
                  '8',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '9';
                },
                child: const Text(
                  '9',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '/';
                },
                child: const Text(
                  '÷',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '6';
                },
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '5';
                },
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '4';
                },
                child: const Text(
                  '4',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '*';
                },
                child: const Text(
                  '×',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '1';
                },
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '2';
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '3';
                },
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '-';
                },
                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '.';
                },
                child: const Text(
                  '.',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '0';
                },
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  final String value = Parser()
                      .parse(MyInputSection.input.value)
                      .evaluate(EvaluationType.REAL, ContextModel())
                      .toString();
                  String newValue = '';

                  if (value[value.length - 1] == '0' &&
                      value[value.length - 2] == '.') {
                    for (var i = 0; i < value.length - 2; i++) {
                      newValue += value[i];
                    }
                  } else {
                    newValue = value;
                  }
                  MyInputSection.input.value = newValue;
                },
                child: const Text(
                  '=',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              MyCalculatorButton(
                onPressed: () {
                  MyInputSection.input.value += '+';
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
