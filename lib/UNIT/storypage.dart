import 'package:flutter/material.dart';

class Storypage extends StatefulWidget {
  Storypage({super.key});

  @override
  State<Storypage> createState() => _StorypageState();
}

final List<Map<String, String>> imformations = [
  {
    "name": "Sajim",
    "profileimages":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
  },
  {
    "name": "Tawhid",
    "profileimages":
        "https://images.unsplash.com/photo-1493244040629-496f6d136cc3",
  },
  {
    "name": "Tobla",
    "profileimages":
        "https://images.unsplash.com/photo-1518770660439-4636190af475",
  },
  {
    "name": "Tampo",
    "profileimages":
        "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg"
  },
  {
    "name": "arbi",
    "profileimages":
        "'https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg'",
  },
  {
    "name": "fukrol",
    "profileimages":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
  },
  {
    "name": "Bora ",
    "profileimages":
        "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
  },
  {
    "name": "mini",
    "profileimages":
        "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
  },
  {
    "name":"fujo",
    "profileimages":""
  }
];

class _StorypageState extends State<Storypage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imformations.length,
        itemBuilder: (context, index) {
          final profileimage=imformations[index]["profileimages"];
          final name= imformations[index]["name"];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 175,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1, right: 60, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                        child: profileimage != null ?
                       Image.network(
                        profileimage,fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                       )
                       : Icon(Icons.person,color: Colors.black,)
                      )
                    ),
                  ),
                  const SizedBox(height: 90),
                  Text(
                    imformations[index]["name"]!,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
