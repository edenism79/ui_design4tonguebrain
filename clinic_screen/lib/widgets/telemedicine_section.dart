import 'package:flutter/material.dart';

class TelemedicineSection extends StatelessWidget {
  const TelemedicineSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(21, 41, 21, 41),
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
                '비대면 진료',
                style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(width: 31),
              Text(
                '의사와 1:1 영상 비대면 진료',
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
                  color: const Color(0xFF3D88FF),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  '진료의사 찾기',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 37, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color(0xFF3D89FF),
                    width: 2,
                  ),
                ),
                child: const Text(
                  '예약/진료 내역',
                  style: TextStyle(
                    color: Color(0xFF3D88FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
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
