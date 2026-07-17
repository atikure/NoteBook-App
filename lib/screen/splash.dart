import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    timerFun();
    super.initState();
  }
  Future<void> timerFun()async{
    await Future.delayed(Duration(seconds: 3)).then((v){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // notebook
      body: Center(child: Image.network("https://store-images.s-microsoft.com/image/apps.2950.13825011251621706.e8a531ea-e643-41b9-8969-8a0182f70030.42d65a11-5acf-4d9b-94a0-3bc9b4defde0")),
    );
  }
}
