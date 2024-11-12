import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF4F6FA),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/ff990ce17382d33a509f4145c6989c86ad870fe2163fab4b2e54cb87323232df?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                width: 24,
                height: 24,
              ),
              SizedBox(width: 3),
              Text(
                '위치',
                style: TextStyle(
                  color: Color(0xFF3D88FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.25,
                  fontFamily: 'Pretendard',
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Container(
            height: 162,
            color: Color(0xFFD9D9D9),
            // This is a placeholder for the map. In a real app, you'd use a proper map widget here.
          ),
          SizedBox(height: 11),
          Text(
            '서울특별시 성동구 하왕십리동 동무빌딩 11층',
            style: TextStyle(
              color: Color(0xFF8193AE),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.25,
              fontFamily: 'Pretendard',
            ),
          ),
          SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '351m',
                style: TextStyle(
                  color: Color(0xFF8193AE),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  fontFamily: 'Pretendard',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement address copy functionality
                },
                child: Text('주소복사'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3D88FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
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