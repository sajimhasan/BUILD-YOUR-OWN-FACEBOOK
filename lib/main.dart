import 'package:facebook/UI/splash_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const SplashPage() ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue
      ),
     darkTheme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue
     ),

     themeMode: ThemeMode.dark,
     
      
    );
  }
}