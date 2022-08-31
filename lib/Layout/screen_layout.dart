import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyScreenLayout extends StatelessWidget {
  const MyScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
            child: DraggableScrollableSheet(
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('Itsdfdsfdsfem $index'));
                    },
                  ),
                );
              },
            ),
          );

  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Layout Information",
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
