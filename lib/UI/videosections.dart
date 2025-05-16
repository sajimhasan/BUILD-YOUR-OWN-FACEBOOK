import 'package:facebook/UNIT/Costom_settingfut.dart';
import 'package:flutter/material.dart';

class Videosections extends StatelessWidget {
  const Videosections({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
 body: Column(
  children: [
    //Costom_Settingfut(icons: Icons.abc, title: "hello world")
     Costom_Settingfut(bal:Icons.abc_sharp ,title: "this first ",ontap: () {
       
     },)
    
  ],
 )
    );
  }
}