import 'package:facebook/UI/homepage.dart';
import 'package:facebook/UI/menu.dart';
import 'package:facebook/UI/notifitions.dart';
import 'package:facebook/UI/profile.dart';
import 'package:facebook/UI/videosections.dart';
import 'package:flutter/material.dart';

class Topnavigationbar extends StatelessWidget {
  Topnavigationbar({super.key});
  final List<Widget> pages = [
   Homepage(),
   Videosections(),
   Profile(),
  Notifitions(),
  Menu()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5, child: Scaffold(
      appBar: AppBar(

      bottom:TabBar(tabs: [
        Icon(Icons.home),
        Icon(Icons.tv),
        Icon(Icons.person),
        Icon(Icons.notifications),
       Icon(Icons.menu)
      ]),),
    ));
  }
}
