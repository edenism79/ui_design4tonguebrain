import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Pretendard',
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.08), // 화면 맨 위에 여백 추가
            child: Column(
                // children: [
                //   Text(
                //     '혀 사진으로 뇌질환 예측',
                //     style: TextStyle(
                //       fontSize: screenHeight * 0.02, // 폰트 크기 조정
                //       fontWeight: FontWeight.w500, // Pretendard-Light 적용
                //       color: const Color.fromARGB(255, 0, 140, 255), // 텍스트 색상 설정
                //     ),
                //   ),
                //   SizedBox(height: screenHeight * 0.005),
                //   Text(
                //     '인공지능으로 150세까지!',
                //     style: TextStyle(
                //       fontSize: screenHeight * 0.03, // 폰트 크기 조정
                //       fontWeight: FontWeight.w700, // Pretendard-Regular 적용
                //       color: const Color.fromARGB(255, 0, 140, 255), // 텍스트 색상 설정
                //     ),
                //   ),
                // ],
                ),
          ),
          Container(
            width: screenWidth,
            height: screenHeight * 0.5, // 이미지가 화면의 40%를 차지하도록 설정
            child: Image.asset(
              'assets/images/splash_image.png', // 이미지 파일 경로
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(bottom: screenHeight * 0.05), // 화면 맨 아래 여백 추가
            child: Column(
              children: [
                Text(
                  '텅브레인™',
                  style: TextStyle(
                    fontSize: screenHeight * 0.03, // 폰트 크기 조정
                    fontWeight: FontWeight.w900, // Pretendard-Regular 적용
                    color: const Color.fromARGB(255, 0, 140, 255), // 텍스트 색상 설정
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  '노인성 뇌질환자에게 좋은 색상으로 디자인 했습니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight * 0.015, // 폰트 크기 조정
                    fontWeight: FontWeight.w500, // Pretendard-Thin 적용
                    color: const Color.fromARGB(255, 0, 140, 255), // 텍스트 색상 설정
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text(
                  'COPYRIGHT 2024 by SeolLab Inc. All Rights Reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight * 0.015, // 폰트 크기 조정
                    fontWeight: FontWeight.w700, // Pretendard-Thin 적용
                    color: const Color.fromARGB(255, 0, 140, 255), // 텍스트 색상 설정
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
