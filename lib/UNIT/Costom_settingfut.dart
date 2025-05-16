import 'package:flutter/material.dart';

class Costom_Settingfut extends StatelessWidget {
  final String title; 
  final IconData bal;
  final VoidCallback ontap;
  
  const Costom_Settingfut({super.key,required this.bal, required this.title, required this.ontap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
                      children: [
                         Icon(bal, size: 30),
                        const SizedBox(width: 10),
                         Text(
                         title,
                          style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const Spacer(),
                       
                      ],
                    ),
        ),
      ),
    );
              
  }
}