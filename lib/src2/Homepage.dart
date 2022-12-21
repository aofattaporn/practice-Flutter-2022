import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/src2/constant/Constant_Color.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// AppBar
      // appBar: AppBar(),
      // body: Container(
      //   color: Colors.black38,
      //   child: Text("Hello world"),
      // ),

      /// FAB
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 40),
        backgroundColor: kThirtery,
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      /// Bottom navigation Bar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(onPressed: (){},
                  child: Icon(Icons.home, size: 24)),
                  MaterialButton(onPressed: (){},
                      child: Icon(Icons.search, size: 24))
                ],
              ),
              Row(
                children: [
                  MaterialButton(onPressed: (){},
                      child: Icon(Icons.notifications, size: 24)),
                  MaterialButton(onPressed: (){},
                      child: Icon(Icons.person, size: 24))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
