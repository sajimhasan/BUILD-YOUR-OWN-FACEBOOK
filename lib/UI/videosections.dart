import 'package:facebook/UNIT/Costom_settingfut.dart';
import 'package:facebook/UNIT/postlist.dart';
import 'package:flutter/material.dart';

class Videosections extends StatelessWidget {
  const Videosections({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
 body: Column(
  children: [
   Container(
    height: 700,
    width: MediaQuery.of(context).size.width,
    color: Colors.deepPurpleAccent,
    child: Column(
      children: [
        Row(
          children: [
            Text("VIDEO"),
          ],
        ),
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          color: Colors.brown,
        ),

      ],
    ),
   )
  ],
 )
    );
  }
}