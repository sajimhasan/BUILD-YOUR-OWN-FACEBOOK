import 'package:flutter/material.dart';

class setting_screen extends StatelessWidget {
  final IconData iconsss ; 
  final String title; 

  const setting_screen({super.key, required this.iconsss , required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
           padding:  const  EdgeInsets.only(left: 20,top: 10),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(width: 10,),
              Icon(iconsss,size: 30,),
            const  SizedBox(height: 10,),
              Text(title,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)
            ],
           ),
         ),
    );
  }
}