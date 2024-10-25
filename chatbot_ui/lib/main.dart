import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  String _userQuestion = '';
  String _botAnswer = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),
      resizeToAvoidBottomInset: false, // 키보드가 올라오면 자동으로 높이를 조정
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(), // 화면을 탭하면 키보드가 닫히도록 처리
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  children: [
                    if (_userQuestion.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF1B263B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              _userQuestion,
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: size.width * 0.04,
                                color: Colors.yellow[100],
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_botAnswer.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Color(0xFF1B263B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              _botAnswer,
                              style: TextStyle(
                                fontFamily: 'Pretendard',
                                fontSize: size.width * 0.04,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0), // 추가적인 패딩 적용
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: size.width * 0.08,
                              height: size.width * 0.08,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            onSubmitted: (value) {
                              setState(() {
                                _userQuestion = value;
                                _botAnswer =
                                    '서버에서 받아온 답변'; // 실제 서버에서 받아오는 로직 추가 필요
                                _controller.clear();
                              });
                            },
                            decoration: InputDecoration(
                              hintText: '텅브레인GPT에 질문 입력',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'Pretendard',
                                color: Colors.grey,
                                fontSize: size.width * 0.04,
                              ),
                            ),
                            style: TextStyle(
                              fontFamily: 'Pretendard',
                              color: Colors.yellow[100],
                              fontSize: size.width * 0.04,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
