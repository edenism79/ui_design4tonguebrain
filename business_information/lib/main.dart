import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClinicScreen(),
    );
  }
}

class ClinicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('클리닉', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // 상단 배너
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    '상담 후기 쓰면 포인트를 드려요\n포인트는 상담 접수 시 사용할 수 있어요.',
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
              ],
            ),
          ),

          // 어디서나 비대면 진료
          Text('어디서나 비대면 진료',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // 이미지 대신에 Icon 사용
                      Icon(Icons.health_and_safety_outlined, size: 50.0),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('뇌질환 진료',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 4.0),
                            Text('의사와 1:1 영상 비대면 진료',
                                style: TextStyle(color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('진료 의사 찾기'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.yellow[700],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('예약/진료내역'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16.0),
          ListTile(
            leading: Icon(Icons.announcement),
            title: Text('실증특례 이용자 고지 보기'),
          ),

          SizedBox(height: 16.0),

          // 바로 실시간 상담
          Text('바로 실시간 상담',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Icon 대신 이미지 사용 가능
                      Icon(Icons.local_hospital, size: 50.0),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('건강 상담',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 4.0),
                            Text('매일 오전 11시부터 밤 9시까지',
                                style: TextStyle(color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('상담 의사 찾기'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.yellow[700],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('상담내역'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16.0),
          ListTile(
            leading: Icon(Icons.health_and_safety),
            title: Text('주변 병원 찾기'),
          ),

          // 하단 회사 정보
          SizedBox(height: 16.0),
          ExpansionTile(
            title: Center(
              child: Text(
                '(주) 설랩 SeolLab Inc. 사업자 정보',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('대표이사 : 남상이', style: TextStyle(color: Colors.grey)),
                    Text('사업자 등록번호 112-87-03131',
                        style: TextStyle(color: Colors.grey)),
                    Text('통신판매업 신고번호 2023-강원**-1629',
                        style: TextStyle(color: Colors.grey)),
                    Text('강원도 ****', style: TextStyle(color: Colors.grey)),
                    Text('대표전화 010-7122-9411',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '기록'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '수첩'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: '클리닉'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: '쇼핑'),
        ],
      ),
    );
  }
}
