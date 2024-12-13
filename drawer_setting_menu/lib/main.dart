import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '마이페이지',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Pretendard', // 기본 폰트를 Pretendard로 설정
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Pretendard'),
          bodyMedium: TextStyle(fontFamily: 'Pretendard'),
        ),
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '마이페이지',
          style: TextStyle(fontFamily: 'Pretendard'),
        ),
        elevation: 0.0,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Builder 내부의 context 사용
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/cartoon.gif'),
                backgroundColor: Colors.white,
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //     backgroundImage: AssetImage('images/ch1.png'),
              //     backgroundColor: Colors.white,
              //   ),
              // ],
              accountName: Text(
                'Guest 님',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              accountEmail: Text(
                '텅브레인에 오신걸 환영합니다.',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              // onDetailsPressed: () {
              //   print('클릭시에 유저의 정보가 나올수있도록 구현');
              // },
              decoration: BoxDecoration(
                color: const Color(0xFF3D89FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.login_outlined,
            //     color: const Color(0xFFFF7A7A),
            //   ),
            //   title: Text(
            //     '로그인',
            //     style: TextStyle(
            //         fontFamily: 'Pretendard', color: const Color(0xFFFF7A7A)),
            //   ),
            //   onTap: () {
            //     print('로그인으로 이동');
            //   },
            // ),
            ListTile(
              leading: Icon(
                Icons.analytics_outlined,
                color: const Color(0xFF3D89FF),
              ),
              title: Text(
                '진단기록 결과',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('진단기록으로 이동');
              },
              trailing: Icon(
                Icons.arrow_circle_right_outlined,
                color: const Color(0xFF3D89FF),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer_outlined,
                color: const Color(0xFF3D89FF),
              ),
              title: Text(
                '텅브레인GPT 상담봇',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('AI의료챗봇으로 이동');
              },
              trailing: Icon(
                Icons.arrow_circle_right_outlined,
                color: const Color(0xFF3D89FF),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_hospital_outlined,
                color: const Color(0xFF3D89FF),
              ),
              title: Text(
                '주변병원 찾기',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('주변병원 찾기로 이동');
              },
              trailing: Icon(
                Icons.arrow_circle_right_outlined,
                color: const Color(0xFF3D89FF),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.video_camera_front_outlined,
                color: const Color(0xFF3D89FF),
              ),
              title: Text(
                '1:1 영상 비대면 진료',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('1:1 영상 비대면 진료로 이동');
              },
              trailing: Icon(
                Icons.arrow_circle_right_outlined,
                color: const Color(0xFF3D89FF),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_shopping_cart,
                color: const Color(0xFF3D89FF),
              ),
              title: Text(
                '의료 쇼핑몰',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('의료쇼핑몰로 이동');
              },
              trailing: Icon(
                Icons.arrow_circle_right_outlined,
                color: const Color(0xFF3D89FF),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: const Color.fromARGB(255, 110, 110, 110),
              ),
              title: Text(
                '로그아웃',
                style: TextStyle(fontFamily: 'Pretendard'),
              ),
              onTap: () {
                print('로그아웃으로 이동');
              },
            ),
          ],
        ),
      ),
    );
  }
}
