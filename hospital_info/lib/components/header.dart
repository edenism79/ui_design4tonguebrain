import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/ad8c5017ca7cb3bdbde01acdaa919cabdd6e70524ac96412fd3235230e646c23?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            width: 31,
            height: 31,
          ),
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/acc1af83ec2a175db04611ca21842372636d033e165df23bb0b7b73a7813dd73?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                width: 34,
                height: 24,
              ),
              SizedBox(width: 3),
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/a18bc4085e64e201bcb60ac8001cadd3d26c2dab8e1b1d7116d1d1b8117495da?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}