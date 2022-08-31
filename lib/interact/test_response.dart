import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  String operationName = "";

  void _operation(int flag) {
    if (flag > 0) {
      setState(() {
        _counter++;
        operationName = "Increase";
      });
    } else if (flag < 0) {
      setState(() {
        _counter--;
        operationName = "Decrease";
      });
    } else {
      setState(() {
        _counter = 0;
        operationName = "Reset";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Count: $_counter'),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RowIncremental(1, "Increase"),
              RowIncremental(-1, "Decrease"),
              RowIncremental(0, "Set"),
            ])
          ],
        )
      ],
    );
  }

  Padding RowIncremental(int flag, String operation) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => {_operation(flag)},
        child: Text(operation),
      ),
    );
  }
}
