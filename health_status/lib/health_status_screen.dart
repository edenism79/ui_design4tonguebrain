import 'package:flutter/material.dart';
import 'package:health_status/widgets/health_option_card.dart';
import 'package:health_status/widgets/progress_indicator.dart';
import 'package:health_status/widgets/navigation_button.dart';

class HealthStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FBFF),
      body: SafeArea(
        child: Container(
          width: 375,
          height: 848,
          child: Stack(
            children: [
              Container(
                width: 375,
                height: double.infinity,
                color: Colors.white,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x89EAEBEE),
                      offset: Offset(0, 11),
                      blurRadius: 26,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 21,
                top: 94,
                child: Text(
                  '현재의 건강 상태',
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF33383F),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 141,
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 14,
                      color: Color(0xFF9099AA),
                    ),
                    SizedBox(width: 11),
                    Text(
                      '중복 체크 가능',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF9099AA),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 19,
                top: 180,
                child: CustomProgressIndicator(),
              ),
              Positioned(
                right: 20,
                top: 251,
                child: HealthOptionCard(
                  title: '고혈압',
                  isSelected: false,
                ),
              ),
              Positioned(
                right: 20,
                top: 317,
                child: HealthOptionCard(
                  title: '당뇨',
                  isSelected: false,
                ),
              ),
              Positioned(
                right: 20,
                top: 383,
                child: HealthOptionCard(
                  title: '고지혈',
                  isSelected: true,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 353,
                child: HealthOptionCard(
                  title: '간질환',
                  isSelected: false,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 287,
                child: HealthOptionCard(
                  title: '비만',
                  isSelected: false,
                ),
              ),
              Positioned(
                right: 20,
                bottom: 39,
                child: NavigationButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
