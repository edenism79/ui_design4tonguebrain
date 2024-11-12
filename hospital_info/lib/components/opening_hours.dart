import 'package:flutter/material.dart';

class OpeningHours extends StatelessWidget {
  const OpeningHours({Key? key}) : super(key: key);

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
                'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/bf1cd4a76851f5efcde8eb6d19d34ab250dc63342cf416f2691b8bfc55fde6f5?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                width: 18,
                height: 18,
              ),
              SizedBox(width: 3),
              Text(
                '진료시간',
                style: TextStyle(
                  color: Color(0xFF3D88FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.25,
                  fontFamily: 'Pretendard',
                ),
              ),
              Spacer(),
              _buildStatusTag('진료중', Color(0xFF3D88FF)),
              SizedBox(width: 4),
              _buildStatusTag('휴진', Color(0xFFFF7A7A)),
            ],
          ),
          SizedBox(height: 15),
          _buildTimeRow('월요일', '09:00 - 18:00'),
          _buildTimeRow('화요일', '09:00 - 18:00'),
          _buildTimeRow('수요일', '09:00 - 18:00'),
          _buildTimeRow('목요일', '09:00 - 18:00'),
          _buildTimeRow('금요일', '09:00 - 18:00'),
          _buildTimeRow('토요일', '09:00 - 18:00'),
          _buildTimeRow('일요일', '휴진', isHoliday: true),
          _buildTimeRow('공휴일', '휴진', isHoliday: true),
          SizedBox(height: 10),
          Text(
            '점심시간 13:00 - 14:00',
            style: TextStyle(
              color: Color(0xFF8193AE),
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

  Widget _buildStatusTag(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Pretendard',
        ),
      ),
    );
  }

  Widget _buildTimeRow(String day, String time, {bool isHoliday = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              day,
              style: TextStyle(
                color: isHoliday ? Color(0xFFFF7A7A) : Color(0xFF8193AE),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25,
                fontFamily: 'Pretendard',
              ),
            ),
          ),
          Text(
            time,
            style: TextStyle(
              color: isHoliday ? Color(0xFFFF7A7A) : Color(0xFF8193AE),
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