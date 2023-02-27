import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Counter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final heigh=MediaQuery.of(context).size.height * 1 ;
    return Scaffold(
      appBar: AppBar(
        title: Text('App Using getx'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Getx Dialog Box'),
              subtitle: Text('Click MeGetx Dialog Alert with Default Dialoge'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    content: Card(
                      child: Column(
                        children: [
                          Text('Are You sure you want to exit')],
                      ),
                    ),
                    confirm: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Yes')),
                    cancel:
                        TextButton(onPressed: () {}, child: Text('Cancel')));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Getx Bottom Sheet'),
              subtitle: Text('Click Me! To change to Dark or white or system background color'),
              onTap: (){
                Get.bottomSheet(
                 Container(
                   height: heigh*.5,
                   // height: Get.height*.45,
                   width: 400,
                   decoration: BoxDecoration(
                     color: Colors.teal,
                     borderRadius: BorderRadius.circular(30)
                   ),
                   child: Column(
                     children: [
                       ListTile(
                         leading: Icon(Icons.light_mode_outlined,color: Colors.white,),
                         title: Text('Light mode'),
                         onTap: (){
                           Get.changeTheme(ThemeData.light());
                         },
                       ),
                       ListTile(
                         leading: Icon(Icons.dark_mode,color: Colors.white70,),
                         title: Text('Dark mode'),
                         onTap: (){
                           Get.changeTheme(ThemeData.dark());
                         },
                       )
                     ],
                   ),
                 )
                );
              },
            ),
          ),
          TextButton.icon(onPressed: (){
            Get.to(CounterApp());

          }, icon: Icon(Icons.add), label: Text('Counter App'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cached_sharp),
        onPressed: () {
          Get.snackbar(
              icon: Icon(Icons.account_circle_sharp),
              'Iftekhar Ahmed',
              'Thanks for using my App',
              backgroundColor: Colors.red);
        },
      ),
    );
  }
}
