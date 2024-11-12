import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

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
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/6a63a6b56e3857e31e86790168d0579d27be8af8d9c28988c50f9fc4475b9036?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            width: 18,
            height: 18,
          ),
          SizedBox(width: 5),
          Text(
            '전화번호',
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
            '02-1111-7777',
            style: TextStyle(
              color: Color(0xFF8193AE),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
              fontFamily: 'Pretendard',
            ),
          ),
          SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              // TODO: Implement phone call functionality
            },
            child: Text('전화하기'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3D88FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}