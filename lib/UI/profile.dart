import 'package:facebook/UNIT/Costom_settingfut.dart';
import 'package:facebook/UNIT/CustomSetting.dart';
import 'package:flutter/material.dart';
        // Image.network('https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg'), // Interstellar Poster


class Profile extends StatelessWidget {
  Profile({super.key});
  final List<Map<String, String>> imformations = [
    {'name': 'sajim', 'image': 'https://i.imgur.com/BoN9kdC.png'},
    {'name': 'israt', 'image': 'https://i.imgur.com/Ot5DWAW.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          
          Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey,
                child: Image.network('https://i.imgur.com/Ot5DWAW.png',fit: BoxFit.cover,height: 200,
                width: double.infinity,),
              ),
              Positioned(
                bottom: 20,
                left: 30,
                child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white ,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network("https://i.imgur.com/BoN9kdC.png",fit: BoxFit.cover,height: 100,width: 100,)),
              )
              )
                  ],
                ),
              ),
              
              
            ],
          )

        ],
      )
    );
  }
}
