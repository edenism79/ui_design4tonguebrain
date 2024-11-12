import 'package:flutter/material.dart';
import 'package:hospital_list/hospital_list/components/filter_bar.dart';
import 'package:hospital_list/hospital_list/components/hospital_card.dart';
import 'package:hospital_list/hospital_list/components/map_button.dart';

class HospitalListScreen extends StatelessWidget {
  const HospitalListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          // margin: const EdgeInsets.symmetric(horizontal: double.infinity),
          child: Column(
            children: [
              _buildHeader(),
              const Divider(),
              const FilterBar(),
              Expanded(
                child: ListView(
                  children: [
                    HospitalCard(
                      name: '서울 고운치과의원',
                      openingHours: '화요일 9:00 AM - 6:00 PM',
                      distance: '2km',
                      address: '서울특별시 성동구 하왕십리동',
                    ),
                    HospitalCard(
                      name: '서울 고운치과의ss원',
                      openingHours: '화요일 9:00 AM - 6:00 PM',
                      distance: '2km',
                      address: '서울특별시 성동구 하왕십리동',
                    ),
                    HospitalCard(
                      name: '서울 고운치과의ss원',
                      openingHours: '화요일 9:00 AM - 6:00 PM',
                      distance: '2km',
                      address: '서울특별시 성동구 하왕십리동',
                    ),
                    HospitalCard(
                      name: '서울 고운치과의ss원',
                      openingHours: '화요일 9:00 AM - 6:00 PM',
                      distance: '2km',
                      address: '서울특별시 성동구 하왕십리동',
                    ),
                    // Add more HospitalCard widgets as needed
                  ],
                ),
              ),
              const MapButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      color: const Color(0xFFF4F6FA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/brain_icon.png', width: 31, height: 31),
                  const SizedBox(width: 4),
                  const Text(
                    '텅브레인 추천 병원',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF9B9B9B),
                    ),
                  ),
                ],
              ),
              Image.asset('assets/menu_icon.png', width: 27, height: 27),
            ],
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFF3D88FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/location_icon.png', width: 24, height: 24),
                const SizedBox(width: 4),
                const Text(
                  '삼선동5가',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
