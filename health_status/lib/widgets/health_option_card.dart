import 'package:flutter/material.dart';

class HealthOptionCard extends StatelessWidget {
  final String title;
  final bool isSelected;

  const HealthOptionCard({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 46,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? Color(0xFF3D88FF) : Color(0xFFEBEDF2),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x89EAEBEE),
            offset: Offset(0, 11),
            blurRadius: 26,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21, vertical: 14),
        child: Row(
          children: [
            Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Color(0xFF3D88FF) : Color(0xFFAEB4C0),
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Pretendard',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isSelected ? Color(0xFF3D88FF) : Color(0xFFAEB4C0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
