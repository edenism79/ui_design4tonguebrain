import 'package:flutter/material.dart';

class ViewRecordsButton extends StatelessWidget {
  const ViewRecordsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 50),
      decoration: BoxDecoration(
        color: const Color(0xFF3D89FF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/16dddcbc928bbd8787e6d08aefbb461eb8a3ec2f8f6b9451bd87bde29280ff8d?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            width: 62,
            height: 54,
            fit: BoxFit.contain,
          ),
          const Text(
            '기록 보기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/83f3499d2110dc279746d92bf7e7bdc6f0ff4b1fe33f61526320c8b3bb384754?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            width: 62,
            height: 54,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
