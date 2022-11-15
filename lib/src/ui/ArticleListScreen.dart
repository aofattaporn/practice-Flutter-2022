
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleListScreen extends StatelessWidget {

  const ArticleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(

      /// section appbar
      appBar: AppBar(
          title: const Text(
              'Articles'
          )
      ),

      /// sectioc create input  for searching
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Search ...'),
              onChanged: (query) {
                // 2
              },
            ),
          ),
          Expanded(
            // 3
            child:_buildResults(),
          )
        ],
      ),

    );
  }

  Widget _buildResults() {
    return const Center(child: Text('No Results'));
  }
}

