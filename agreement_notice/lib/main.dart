import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Permission Guide',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Pretendard',
      ),
      home: PermissionGuideScreen(),
    );
  }
}

class PermissionGuideScreen extends StatelessWidget {
  final double iconSize = 25.0; // 아이콘 크기 설정 가능

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double fontSizeFactor = screenHeight * 0.02;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.02),
          child: Column(
            children: [
              Text(
                '앱 사용을 위한 중요 안내',
                style: TextStyle(
                  fontSize: fontSizeFactor,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Divider(thickness: 2, color: Colors.grey[300]),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '이 앱은 사용자의 혀 사진만을 수집하고 분석합니다. 계속하기 전에 다음 사항들을 주의 깊게 읽고 동의해 주세요. ',
              style: TextStyle(
                fontSize: fontSizeFactor,
                fontWeight: FontWeight.w800,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.looks_one, size: iconSize, color: Colors.grey[700]),
                SizedBox(width: screenWidth * 0.02),
                Expanded(
                  child: Text(
                    '해당 앱이 내 혀 사진을 수집하는 것에 동의 합니다.',
                    style: TextStyle(
                      fontSize: fontSizeFactor,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.looks_two, size: iconSize, color: Colors.grey[700]),
                SizedBox(width: screenWidth * 0.02),
                Expanded(
                  child: Text(
                    '수집된 혀 데이터가 [구체적인 목적]을 위해 사용되는 것에 동의 합니다.',
                    style: TextStyle(
                      fontSize: fontSizeFactor,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.looks_3, size: iconSize, color: Colors.grey[700]),
                SizedBox(width: screenWidth * 0.02),
                Expanded(
                  child: Text(
                    '혀 데이터는 비식별 자료로서 혀사진만을 가지고는 사용자를 구분할 수 없는 것을 알고 있습니다.',
                    style: TextStyle(
                      fontSize: fontSizeFactor,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  // 여기에 URL 이동 코드 추가
                },
                child: Text(
                  '자세한 개인 정보 처리 방침 보기',
                  style: TextStyle(
                    fontSize: fontSizeFactor * 0.75,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: screenHeight * 0.02), // 하단 여백 추가
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: const Color(0xFF3D89FF),
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    ),
                    onPressed: () {
                      // 확인 버튼 클릭 시 동작 추가
                    },
                    child: Text(
                      '모든 내용에 동의하고 계속하기',
                      style: TextStyle(
                        fontSize: fontSizeFactor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
