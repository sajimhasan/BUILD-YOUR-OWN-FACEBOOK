import 'package:flutter/material.dart';

class Notifitions extends StatefulWidget {
  const Notifitions({super.key});

  @override
  State<Notifitions> createState() => _NotifitionsState();
}

class _NotifitionsState extends State<Notifitions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Top Header Row
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.search, size: 30),
              ],
            ),
            // "New" Label
         const   Align(
              alignment: Alignment.topLeft,
              child: Text(
                "New",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            // List of Notifications
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Facebook Logo
                            Stack(
                              children: [
                              Container(
                                
                                height: 120,
                                width: 100,
                                color: Colors.transparent,
                                
                              ),
                              Positioned(
                                left: 5,
                                bottom: 5,
                                child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset("images/download.png",fit: BoxFit.cover,height: 80,width: 80,)),
                                
                              )
                              ),
                              Positioned(
                                bottom: 2,
                                left: 50,
                                child: CircleAvatar(child: Icon(Icons.abc)))
                              ]
                            ),
                           const SizedBox(width: 10), // spacing between image and text
                            // Expanded text content
                           const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Jomona tv was live jjskjshkjhdkjshdjkshdkjhsjkdhskj",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "This is the Tangail main news feed and the Bangladesh main news channel!",
                                    style: TextStyle(fontSize: 12),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            // More icon
                           const Icon(Icons.more_horiz, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}