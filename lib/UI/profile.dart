import 'package:facebook/UNIT/Costom_settingfut.dart';
import 'package:facebook/UNIT/CustomSetting.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
   Profile({super.key});
   final List<Map<String , String>> imformations = [
    {'name':'sajim' , 'image':'https://i.imgur.com/BoN9kdC.png',},
    {'name':'israt', 'image':'https://i.imgur.com/Ot5DWAW.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          // Visibility(
          //    visible: ,
          //      child: const Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           setting_screen(
          //             iconsss: Icons.home_work_outlined,
          //             title: "Market",
          //           ),
          //           setting_screen(iconsss: Icons.person_3, title: "Friend"),
          //         ],
          //       ),
          //    ),
          //    ElevatedButton(onPressed: (){
          //     setState(){
          //       isVisibility = !isVisibility;
          //     }
          //    } , child: Text( isVisibility? "Shoo more" : "show less")),

        
 Costom_profasonal(
                title: "Meta Verified",
                subtitle: "Build trust with a verified badge.",
                backgroundImage: "images/download.png",
                icon: Icons.verified,
              ),        ],
      ),

    );
  }
}