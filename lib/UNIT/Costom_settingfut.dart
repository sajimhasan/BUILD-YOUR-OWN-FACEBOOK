import 'package:flutter/material.dart';

class Costom_Settingfut extends StatelessWidget {
  final String title;
  final IconData bal;
  final VoidCallback ontap;

  const Costom_Settingfut({
    super.key,
    required this.bal,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(bal, size: 30),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Costom_profasonal extends StatelessWidget {
  final String subtitle;
  final String backgroundImage;
  final IconData icon;
  final String title;
  Costom_profasonal({
    super.key,
    required this.backgroundImage,
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 200, width: 185, color: Colors.transparent),
        Container(
          height: 100,
          width: 185,
          decoration: const BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Image.asset(backgroundImage),
        ),

        Positioned(
          bottom: 0,
          child: Container(
            height: 100,
            width: 185,
            decoration: const BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(height: 200, width: 185, color: Colors.transparent),
        Positioned(
          left: 15,
          bottom: 85,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25,

            child: Icon(icon),
          ),
        ),
      ],
    );
  }
}

class Meta_container extends StatelessWidget {
  final String title; 
  final IconData icono; 
  const Meta_container({super.key , required this.icono , required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icono, size: 30),
              SizedBox(width: 10),
              Text(
               title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
