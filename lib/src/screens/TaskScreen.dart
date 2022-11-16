import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// create appbar
      appBar: AppBar(
        title: const Text('Task App'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),

      /// create main content
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Chip(
              label: Text('Tasks'),
            ),
          )
        ],
      ),

      /// create floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
