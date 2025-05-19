import 'dart:io';

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
              const SizedBox(height: 10),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Storypage(),
              ),
              //this the post costom container!! 
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  //profile image
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset("images/download.png",fit: BoxFit.contain,
                                    height: 50,
                                    width: 50,),
                                  ),
                                ),
                                SizedBox(width: 14),
                                Column(
                                  children: [
                                    Text(
                                      "name",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("time")
                                  ],
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.more_horiz_rounded),
                                SizedBox(width: 10),
                                Icon(Icons.cancel),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        color: Colors.pinkAccent,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("good morning",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),maxLines: 3,overflow: TextOverflow.ellipsis,),
                          )),
                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.cyan,
                        child: Image.asset("images/download.png",fit: BoxFit.contain,),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.add_reaction_outlined),
                            Icon(Icons.comment),Icon(Icons.share),Icon(Icons.more_vert_rounded)
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
