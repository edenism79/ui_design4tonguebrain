import 'package:flutter/material.dart';

class MedicalServices extends StatelessWidget {
  final String title;
  final String subtitle;

  const MedicalServices({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2A2D36),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              subtitle,
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
          'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/1a8cd3f2fc24f807521013e39bf2380d68c1b9fb2e7e26bbaa94e0508fd1055d?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
          width: 30,
          height: 30,
          fit: BoxFit.contain,
        ),
      ],
    );
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildServiceItem('내원 검진\n(준비중)'),
        _buildServiceItem('건강검진\n(준비중)'),
        _buildServiceItem('예방접종\n(준비중)'),
      ],
    );
  }

  Widget _buildServiceItem(String text) {
    return Container(
      width: 88,
      height: 88,
      decoration: BoxDecoration(
        color: const Color(0xFF3D89FF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
