import 'package:flutter/material.dart';

class Storypage extends StatefulWidget {
   Storypage({super.key});
 

  @override
  State<Storypage> createState() => _StorypageState();
}
final List<Map<String , String>> imformations = [
    {"name":'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},
    {"name":'israt', 'image':'https://i.imgur.com/Ot5DWAW.png'},
        {"name":'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},

    {"name":'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},

    {"name":'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},

    {"name":'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},


    
  ];

class _StorypageState extends State<Storypage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imformations.length,
        itemBuilder: (context , index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 175,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.black,
              borderRadius: BorderRadius.circular(20)),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1, right: 60, top: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Container(
                      height: 40,
                      width: 40,
                      color: Colors.white,
                    // child: Image.network(imformations[index]['image']!)
                    )
                    ),
              ),
             const SizedBox(height: 90,),
              Text(imformations[index]['name']!,
                style: TextStyle(color: Colors.white),)
            ],
          ),
               ),
        );
        
      }),
    );
  }
}