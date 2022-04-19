import 'package:anticorruptionapp/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';  
import 'package:splash_screen_view/SplashScreenView.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Screen',
      
      home: SplashScreenView(
      navigateRoute: HomePage(),
      duration: 5000,
      imageSize: 150,
      imageSrc: "assets/images/map_of_nepal.png",
      text: "घुस लिन्या र दिन्या दुबै राष्ट्रका महा शत्रु हुन ।।",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      colors: const [
        Colors.purple,
        Color.fromARGB(255, 162, 13, 2),
      ],
      backgroundColor: Colors.blueAccent,
      pageRouteTransition: PageRouteTransition.SlideTransition,
    ),
    );
  }
}