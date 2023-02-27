import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'counter_controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int x=0;
  CounterController controller= Get.put(CounterController());
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
         Center(child: Text("Counter Using simple initState = "+x.toString()),),
          SizedBox(height: 14,),
          Center(child: Text('Counter Using Getx'),),


          TextButton(
            onPressed: () {
              controller.incrementCounter();

            },
            child: Icon(
              semanticLabel: 'GetxCounter' ,
              size: 30 ,
              Icons.add,
            )

          ),
          Center(
          child:Obx((){
            return Text(controller.counter.toString());
    }) ,)

          
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
