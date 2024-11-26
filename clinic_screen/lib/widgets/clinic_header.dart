import 'package:flutter/material.dart';

class ClinicHeader extends StatelessWidget {
  const ClinicHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '전문 클리닉',
          style: TextStyle(
            color: Color(0xFF2A2D36),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'AI상담부터 비대면 진료까지!',
          style: TextStyle(
            color: Color(0xFF2A2D36).withOpacity(0.499),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.3,
          ),
        ),
      ],
    );
  }
}
