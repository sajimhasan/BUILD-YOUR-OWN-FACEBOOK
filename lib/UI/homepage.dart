import 'package:facebook/UNIT/CustomSetting.dart';
import 'package:facebook/UNIT/storypage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: false,
     
    body: Column(
      
      children: [
        SizedBox(height: 10,),
      Text('this the make by !'),
      Storypage(),
     
      
      ],
    )
    
    

    );
  }
}