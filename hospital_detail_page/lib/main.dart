import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '병원 정보 앱',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HospitalDetailPage(),
    );
  }
}

class HospitalDetailPage extends StatefulWidget {
  @override
  _HospitalDetailPageState createState() => _HospitalDetailPageState();
}

class _HospitalDetailPageState extends State<HospitalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // 뒤로가기 기능 추가
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('병원 정보',
            style: TextStyle(fontFamily: 'Pretendard', color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {
              // 공유 기능 추가
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {
              // 즐겨찾기 기능 추가
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 병원 대표 이미지 부분
            Container(
              color: Color(0xFFEFF7FF), // 이미지 배경색
              height: 180,
              child: Center(
                child: Icon(Icons.local_hospital,
                    size: 100, color: Color(0xFF3D90E3)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 병원 이름
                  Text(
                    '서울고운치과의원',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.grey[400], size: 20),
                      SizedBox(width: 4),
                      Text(
                        '수집 중 · 치과',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          size: 16, color: Colors.grey[600]),
                      SizedBox(width: 4),
                      Text(
                        '103m · 서울시 성북구 보문로',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.access_time,
                          size: 16, color: Color(0xFF3D90E3)),
                      SizedBox(width: 4),
                      Text(
                        '진료중 · 오늘 09:30 - 20:30',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF3D90E3),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // 진료 시간 섹션
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7FBFF), // 진료 시간 배경색
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '진료 시간',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '오늘: 09:30 - 20:30 (점심시간 13:00 - 14:00)',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Divider(),
                        Text(
                          '월요일: 09:30 - 18:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '화요일: 09:30 - 20:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '수요일: 09:30 - 18:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '목요일: 09:30 - 20:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '금요일: 09:30 - 18:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '토요일: 09:30 - 13:30',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF3D90E3),
                          ),
                        ),
                        Text(
                          '일요일/공휴일: 휴진',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFEE5A5A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // 지도 섹션
                  Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        '카카오 지도 연동',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '서울특별시 성북구 보문로 163 동우빌딩',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF3D90E3),
                        ),
                        onPressed: () {
                          Clipboard.setData(
                              ClipboardData(text: '서울특별시 성북구 보문로 163 동우빌딩'));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('주소가 복사되었습니다')),
                          );
                        },
                        child: Text('주소복사',
                            style: TextStyle(fontFamily: 'Pretendard')),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // 전화번호 섹션
                  Text(
                    '전화번호',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '02-953-2275',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF3D90E3),
                        ),
                        onPressed: () async {
                          const telUrl = 'tel:02-953-2275';
                          if (await canLaunch(telUrl)) {
                            await launch(telUrl);
                          } else {
                            throw '전화 기능을 열 수 없습니다';
                          }
                        },
                        child: Text('전화하기',
                            style: TextStyle(fontFamily: 'Pretendard')),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // 진료과목 섹션
                  Text(
                    '진료과목',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '치과',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  // 병원 리뷰 쓰기 버튼
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3D90E3),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WriteReviewPage()),
                      );
                    },
                    child: Text('병원 리뷰 쓰기',
                        style: TextStyle(fontFamily: 'Pretendard')),
                  ),
                  SizedBox(height: 16),
                  // 리뷰 안내
                  Text(
                    '리뷰 0',
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Icon(Icons.edit, size: 40, color: Colors.grey[400]),
                        Text(
                          '아직 리뷰가 없어요. 첫 리뷰를 작성해 보세요!',
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // 전화문의 버튼
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3D90E3),
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () async {
                        const telUrl = 'tel:02-953-2275';
                        if (await canLaunch(telUrl)) {
                          await launch(telUrl);
                        } else {
                          throw '전화 기능을 열 수 없습니다';
                        }
                      },
                      child: Text(
                        '전화문의',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WriteReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('리뷰 작성',
            style: TextStyle(fontFamily: 'Pretendard', color: Colors.black)),
      ),
      body: Center(
        child: Text(
          '리뷰 작성 페이지',
          style: TextStyle(
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
