import 'dart:io';

import 'package:facebook/UNIT/postlist.dart';
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
    return WillPopScope(
      onWillPop: () async {
        exit(0);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.blue,
        extendBodyBehindAppBar: false,

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.brown,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "images/download.png",
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: const Border(
                              bottom: BorderSide(color: Colors.white),
                              top: BorderSide(color: Colors.white),
                              right: BorderSide(color: Colors.white),
                              left: BorderSide(color: Colors.white),
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "    What's is your mind ? ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Icon(Icons.image),
                      ],
                    ),
                  ),
                  Storypage(),
                  Postlist()
              
                  ],
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  } 
}
