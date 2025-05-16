import 'package:facebook/UI/homepage.dart';
import 'package:facebook/UI/menu.dart';
import 'package:facebook/UI/notifitions.dart';
import 'package:facebook/UI/profile.dart';
import 'package:facebook/UI/videosections.dart';
import 'package:flutter/material.dart';

class Topnavigationbar extends StatelessWidget {
  Topnavigationbar({super.key});
  final List<Widget> pages = [
   const Homepage(),
   const Videosections(),
    Profile(),
    const Notifitions(),
     Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "facebook",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5,),
                  Icon(Icons.search),
                   SizedBox(width: 5,),
                  Icon(Icons.message_outlined),
                ],
              ),
            ],
          ),

          bottom: TabBar(
            tabs: [
              Icon(Icons.home),
              Icon(Icons.tv),
              Icon(Icons.person),
              Icon(Icons.notifications),
              Icon(Icons.menu),
            ],
          ),
        ),
        body: TabBarView(children: pages),
      ),
    );
  }
}
