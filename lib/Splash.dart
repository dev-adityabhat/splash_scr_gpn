import 'package:counter2/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}



class _SplashState extends State<Splash> {
  @override

  void initState() {
    super.initState();
   _navigatetohome();
  }

_navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3500),() {});
    Navigator.pushReplacement(context , MaterialPageRoute(builder: (context)=>MyHomePage(title: 'GPN')));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 70,),
          Center(
            child: Container(

              width: 380,
              //height: 100,
              color: Colors.white,

              child: Image(
                image: AssetImage('assets/images/gpn.png'),
              ),

            ),
          ),

          SizedBox(height: 100,),
          Center(
            child: Container(
              child: Lottie.asset('assets/animations/books.json'),
              height: 500,
            ),
          )
        ],

      ),
    );
  }
}