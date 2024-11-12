import 'package:flutter/material.dart';

class Website extends StatelessWidget {
  const Website({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF4F6FA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/6078b8006b7b030e2ce8b4ea79fb6fdd28627ffbc77805f9316c87165d6d0e17?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            width: 20,
            height: 20,
          ),
          SizedBox(width: 3),
          Text(
            '웹사이트',
            style: TextStyle(
              color: Color(0xFF3D88FF),
              fontSize: 14,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.25,
              fontFamily: 'Pretendard',
            ),
          ),
          Spacer(),
          Text(
            'https://hanheart.co.kr',
            style: TextStyle(
              color: Color(0xFF3D88FF),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
              fontFamily: 'Pretendard',
            ),
          ),
        ],
      ),
    );
  }
}