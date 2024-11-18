import 'package:flutter/material.dart';

class DiagnosisSection extends StatelessWidget {
  const DiagnosisSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '진단 기록',
              style: TextStyle(
                color: Color(0xFF2A2D36),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'by time of the day',
              style: TextStyle(
                color: const Color(0xFF2A2D36).withOpacity(0.499),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.3,
              ),
            ),
          ],
        ),
        Image.network(
          'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/5606d8291bd5622b95769a5f1c00aa1cf422139dc1d702fa29a2aa45d77fa35d?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
          width: 30,
          height: 30,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
