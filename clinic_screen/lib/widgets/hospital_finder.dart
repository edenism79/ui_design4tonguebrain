import 'package:flutter/material.dart';

class HospitalFinder extends StatelessWidget {
  const HospitalFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 31),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F6FF),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '주변 병원 찾기',
                style: TextStyle(
                  color: Color(0xFF3C3C3C),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFF3D8BFF),
                  borderRadius: BorderRadius.circular(31),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF3C94FF),
                      blurRadius: 15,
                      offset: Offset(0, 20),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(width: 85),
                    Image.asset(
                      'assets/search_icon.png',
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            decoration: BoxDecoration(
              color: const Color(0xFFFF7A7A),
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFF7A7A).withOpacity(0.419),
                  blurRadius: 6,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: const Text(
              '거리순으로 주변 병원 찾기',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
