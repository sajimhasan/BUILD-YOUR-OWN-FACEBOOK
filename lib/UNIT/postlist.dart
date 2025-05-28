import 'package:flutter/material.dart';

class Postlist extends StatelessWidget {
  
   Postlist({super.key});
  final List<Map<String, String>> posts = [
  {
    "name": "Sajim",
    "profileimages":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
        "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "Tawhid",
    "profileimages":
        "https://images.unsplash.com/photo-1493244040629-496f6d136cc3",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "Tobla",
    "profileimages":
        "https://images.unsplash.com/photo-1518770660439-4636190af475",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "Tampo",
    "profileimages":
        "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "arbi",
    "profileimages":
        "https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"

  },
  {
    "name": "fukrol",
    "profileimages":
        "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "Bora ",
    "profileimages":
        "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name": "mini",
    "profileimages":
        "https://images.unsplash.com/photo-1600891964599-f61ba0e24092",
         "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  },
  {
    "name":"fujo",
    "profileimages":"",
     "time":"01:80",
        "mainpost": "https://cdn.dribbble.com/users/2364329/screenshots/14194778/media/8f5c278c41e03419d038cc7b3b8b519a.jpg",
        "title":"Hello world"
  }
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(itemCount: posts.length,
      
        itemBuilder: (context , index)
        {
          final name=posts[index]["name"];
          final profileiamge=posts[index]["profileimages"];
          final title=posts[index]["time"];
          final maiapost=posts[index]["mainpost"];
          final time = posts[index]["time"];
          return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white30,
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
                                      child: profileiamge != null && profileiamge.isEmpty ?
                                      Image.network(profileiamge,fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) =>const  Icon(Icons.percent),):const Icon(Icons.error)
                                    ),
                                  ),
                                const   SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                     name !
                                      //  style: TextStyle(
                                      //     fontSize: 20,
                                      //     fontWeight: FontWeight.bold,
                                      //   ),
                                      ),
                                      Text(posts[index]["time"]!)
                                    ],
                                  ),
                                ],
                              ),
      
                             const Row(
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
                          color: Colors.transparent,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(posts[index]["title"]!,style:const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),maxLines: 3,overflow: TextOverflow.ellipsis,),
                            )),
                        ),
                        Container(
                          height: 400,
                          width: double.infinity,
                          color: Colors.cyan,
                          child: maiapost !=null ? Image.network(maiapost,errorBuilder: (context, error, stackTrace) =>const  Icon(Icons.error),): const Icon(Icons.abc)
                          ),
                        
                       const SizedBox(height: 10,),
                       const  Padding(
                          padding:  EdgeInsets.all(10),
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
                );
      
      }),
    );
  }
}