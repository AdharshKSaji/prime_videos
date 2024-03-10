import 'package:flutter/material.dart';
import 'package:prime_videos/view/splashscreen/splash_screen.dart';

void main(){
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}