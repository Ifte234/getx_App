import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Using getx'),
        centerTitle: true,

      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              icon:Icon(Icons.account_circle_sharp),
              'Iftekhar Ahmed', 'Thanks for using my App',
          backgroundColor: Colors.red
          );

        },
      ),

    );
  }
}
