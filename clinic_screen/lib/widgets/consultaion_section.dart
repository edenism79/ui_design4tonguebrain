import 'package:flutter/material.dart';

class ConsultationSection extends StatelessWidget {
  const ConsultationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(26, 40, 26, 40),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F6FF),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '실시간 상담',
                style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                '의사 or 챗GPT상담봇 연결',
                style: TextStyle(
                  color: Color(0xFF8193AE),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 37, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF3D88FF),
                    width: 2,
                  ),
                ),
                child: const Text(
                  '상담의사 찾기',
                  style: TextStyle(
                    color: Color(0xFF3D88FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF7A7A),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF7A7A).withOpacity(0.419),
                      blurRadius: 6,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: const Text(
                  '챗 GPT 싱딤봇',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
