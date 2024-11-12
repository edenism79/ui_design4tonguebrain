import 'package:flutter/material.dart';

class HospitalName extends StatelessWidget {
  const HospitalName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 29, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '서울 고운치과의원',
            style: TextStyle(
              color: Color(0xFF3C3C3C),
              fontSize: 20,
              fontWeight: FontWeight.w800,
              fontFamily: 'Pretendard',
            ),
          ),
          SizedBox(height: 13),
          Row(
            children: [
              _buildTag('주차장'),
              SizedBox(width: 9),
              _buildTag('전문의'),
              SizedBox(width: 9),
              _buildTag('키워드'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
        color: Color(0xFF3D88FF),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          fontFamily: 'Pretendard',
        ),
      ),
    );
  }
}