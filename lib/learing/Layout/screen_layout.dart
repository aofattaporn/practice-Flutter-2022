import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MyScreenLayout extends StatelessWidget {
  const MyScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        // rowLearning(),
        const RiveAnimation.file('assets/image/bear_avatar_remix.rev'),
        const RiveAnimation.asset('assets/image/bear_avatar_remix.rev'),

        Image.asset('assets/image/cat.jpg')

        // columnLearning(),
        // columnLearning(),
        // columnLearning(),
        // columnLearning(),
        // columnLearning()
      ],
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("learing.Layout Information",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Padding rowLearning() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('assets/image/cat.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/image/cat.jpg'),
          ),
          Expanded(
            child: Image.asset('assets/image/cat.jpg'),
          ),
        ],
      ),
    );
  }

  Padding columnLearning() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: const [
          Text("dsfdsfdsfdsfdsf"),
        ],
      ),
    );
  }
}
