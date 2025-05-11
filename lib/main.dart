import 'package:facebook/UI/homepage.dart';
import 'package:facebook/UNIT/topnavigationbar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Topnavigationbar() ,
    );
  }
}