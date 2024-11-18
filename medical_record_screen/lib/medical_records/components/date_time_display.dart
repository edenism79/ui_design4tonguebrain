import 'package:flutter/material.dart';

class DateTimeDisplay extends StatelessWidget {
  const DateTimeDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      height: 263,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/b565233b11238bfd30f4f0c766f2c1393a52aaf15c91a7d8dfa5505f3f21121e?apiKey=c919bc09f5d1432e8f0080d960fc42af&'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            '2:45',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 19),
          Text(
            '2024년 10월 11일',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
