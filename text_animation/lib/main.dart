import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 일정 시간이 지나면 홈 화면으로 이동
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색 설정
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 100, end: 40), // 글자 크기 변환
          duration: const Duration(seconds: 2), // 애니메이션 시간
          builder: (BuildContext context, double size, Widget? child) {
            return Text(
              '텅브레인', // 타이틀 텍스트
              style: TextStyle(
                fontSize: size, // 애니메이션에 따른 글자 크기
                fontWeight: FontWeight.bold,
                color: Colors.blue, // 블루 컬러 적용
              ),
            );
          },
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome to Home Screen'),
      ),
    );
  }
}
