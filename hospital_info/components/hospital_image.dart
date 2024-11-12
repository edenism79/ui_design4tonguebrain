import 'package:flutter/material.dart';

class HospitalImage extends StatelessWidget {
  const HospitalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/912e4ec4ee411fd814eaea745afbc3fa544642a8f6c8b18d88f801cd5203eea0?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/154e15ef5962d99ad1b4c43988b7ff9d9c897e41d01d2a1ca7bd715832337ce5?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
