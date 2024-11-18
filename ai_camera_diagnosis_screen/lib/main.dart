import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AICameraDiagnosisScreen(),
    );
  }
}

class AICameraDiagnosisScreen extends StatelessWidget {
  const AICameraDiagnosisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(21, 96, 21, 581),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AI 카메라 진단',
                        style: TextStyle(
                          color: Color(0xFF2A2D36),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'by time of the day',
                        style: TextStyle(
                          color: Color(0x7F2A2D36),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ],
                  ),
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/06c48200a99257a8ce048f10d75d89d076b84d673374126d8de1c8d68702f22d?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(height: 26),
              Container(
                padding: EdgeInsets.fromLTRB(14, 22, 39, 22),
                decoration: BoxDecoration(
                  color: Color(0xFF3D89FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 14, vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFF7A7A),
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x6BFF7A7A),
                                blurRadius: 6,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: Text(
                            '2024년 10월 11일',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '월요일 13:15',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'AI 카메라 진단',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/dfbb4a61aea0449aad317317e1013775038fd5876dc22b794fc31c98a4a37c79?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                      width: 62,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
