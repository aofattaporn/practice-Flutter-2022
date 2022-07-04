import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class column_picture extends StatelessWidget {
  // constructue method
  const column_picture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var row = Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(child: Image(image: AssetImage('assets/cat.jpg'))),
        Expanded(child: Image(image: AssetImage('assets/cat.jpg'))),
        Expanded(child: Image(image: AssetImage('assets/cat.jpg'))),
      ],
    );

    var starRow = Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
      ),
    );

    var cardTest = const cardModify();

    return Column(
      children: [row, starRow, cardTest],
    );
  }
}

class cardModify extends StatelessWidget {
  const cardModify({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var header = const Text("Titlte Header",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20));

    var reviews = Row(
      children: [
        Container(
          width: 250,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star)
                ],
              )
            ],
          ),
        ),
      ],
    );

    var leftColumn = Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [header, Text("data"), reviews],
      ),
    );

    var rightColumn = const Expanded(
      child: Center(
        child: Image(image: AssetImage('assets/cat.jpg')),
      ),
    );

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white10,
          // border: Border.all(width: 2, color: Colors.white24),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [leftColumn, rightColumn],
      ),
    );
  }
}
