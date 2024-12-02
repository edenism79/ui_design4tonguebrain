import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 59,
      decoration: BoxDecoration(
        color: Color(0xFF3D88FF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x7426D7C8),
            offset: Offset(0, 11),
            blurRadius: 26,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 12,
                  color: Color(0xFFE2EFFF),
                ),
                SizedBox(width: 11),
                Text(
                  'BACK',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFE2EFFF),
                  ),
                ),
              ],
            ),
            Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
