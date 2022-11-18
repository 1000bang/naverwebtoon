import 'package:flutter/material.dart';
import 'main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MainScreen();
      }));

    });
    return Container(
      color: Color.fromRGBO(1, 220, 100, 1),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/splash.png"),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],

        ),
      ),
    );
  }
}