import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int x=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Center(child: Text(x.toString()),)
          
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          x++;
          setState(() {

          });

        },
        child: Icon(Icons.add)
      )


    );
  }
}
