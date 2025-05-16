import 'package:facebook/UNIT/topnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplash(
      child: Text("facebook",style: TextStyle(
        fontSize: 40,
        color: Colors.blue,fontWeight: FontWeight.bold
      ),),
      type: Transition.fade,
      navigator: Topnavigationbar(),
      durationInSeconds: 1,
      backgroundColor: Colors.white,
    );
  }
}
