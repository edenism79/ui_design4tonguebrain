import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  final String name;
  final String openingHours;
  final String distance;
  final String address;

  const HospitalCard({
    Key? key,
    required this.name,
    required this.openingHours,
    required this.distance,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildIconText('assets/reception_icon.png', '접수'),
              const SizedBox(width: 8),
              _buildIconText('assets/reservation_icon.png', '예약'),
            ],
          ),
          const SizedBox(height: 9),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xFF3C3C3C),
            ),
          ),
          const SizedBox(height: 15),
          _buildInfoRow('assets/clock_icon.png', openingHours),
          _buildInfoRow('assets/location_pin_icon.png', '$distance $address'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            decoration: BoxDecoration(
              color: const Color(0xFF3D88FF),
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Text(
              '키워드',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(String iconPath, String text) {
    return Row(
      children: [
        Image.asset(iconPath, width: 18, height: 18),
        const SizedBox(width: 3),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: Color(0xFF3D88FF),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String iconPath, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Image.asset(iconPath, width: 18, height: 18),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8193AE),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
