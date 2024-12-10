import 'package:flutter/material.dart';

class SlideUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slide-up Modal Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20), // 상단 모서리 둥글게 처리
                ),
              ),
              builder: (BuildContext context) {
                final screenHeight = MediaQuery.of(context).size.height;
                final fontScaleFactor = MediaQuery.of(context).textScaleFactor;

                return FractionallySizedBox(
                  heightFactor: 0.6, // 화면의 60%만큼 차지
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(16.0), // 여백
                      color: Colors.white, // 배경 흰색
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20), // 첫 텍스트 위 여백
                          Text(
                            '텅브레인 소식, 혜택 알림을\n받으시겠어요?',
                            style: TextStyle(
                              fontFamily: 'Pretendard-Bold', // 폰트 적용
                              fontSize: 24 * fontScaleFactor, // 폰트 크기 조정
                              color: Colors.black, // 텍스트 색상
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.yellow, // 원 배경 색상
                              child: Image.asset(
                                'assets/images/notification_image.png', // 이미지 경로
                                width: 80, // 이미지 크기
                                height: 80,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 25),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey, // 아웃라인 색상
                                width: 1.0, // 아웃라인 두께
                              ),
                              borderRadius:
                                  BorderRadius.circular(8), // 네모 박스 둥글기 조절
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '마케팅 정보 수신 동의',
                                  style: TextStyle(
                                    fontFamily: 'Pretendard-Light',
                                    color: Colors.black,
                                    fontSize: 16 * fontScaleFactor, // 폰트 크기 조정
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPage()),
                                    );
                                  },
                                  child: Text(
                                    '자세히 보기',
                                    style: TextStyle(
                                      //decoration: TextDecoration.underline,
                                      color: Colors.grey,
                                      fontFamily: 'Pretendard-Thin',
                                      fontSize:
                                          14 * fontScaleFactor, // 폰트 크기 조정
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            ' * 해당 동의 내역은 마이메뉴 > 앱 설정하기 > \n   마케팅 정보 수신 메뉴에서 변경가능합니다.',
                            style: TextStyle(
                              fontFamily: 'Pretendard-Thin',
                              fontSize: 12 * fontScaleFactor, // 폰트 크기 조정
                              color: Colors.grey, // 텍스트 회색 처리
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            ' * 해당 항목 동의 시 앱 PUSH, SMS, 이메일 알람을 받으실 수 있습니다.',
                            style: TextStyle(
                              fontFamily: 'Pretendard-Thin',
                              fontSize: 12 * fontScaleFactor, // 폰트 크기 조정
                              color: Colors.grey, // 텍스트 회색 처리
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow, // 버튼 배경색
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15), // 버튼 둥글기 조절 가능
                              ),
                              minimumSize: Size(double.infinity, 40), // 버튼 크기
                            ),
                            child: Text(
                              '좋아요!',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16 * fontScaleFactor, // 폰트 크기 조정
                              ),
                            ),
                          ),
                          SizedBox(height: 10), // 버튼 아래 여백
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '알림 받지 않기',
                                style: TextStyle(
                                  //decoration: TextDecoration.underline, // 밑줄 처리
                                  color: Colors.grey,
                                  fontSize: 14 * fontScaleFactor, // 폰트 크기 조정
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Open Slide-up'),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('자세히 보기 페이지'),
      ),
      body: Center(
        child: Text('자세한 정보를 확인할 수 있는 페이지입니다.'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: SlideUpPage(),
  ));
}
