import '../models/hospital_info.dart';

class HospitalService {
  Future<HospitalInfo> getHospitalInfo() async {
    // In a real app, this would be an API call
    await Future.delayed(Duration(seconds: 1)); // Simulating network delay

    return HospitalInfo(
      name: '서울 고운치과의원',
      image: 'https://cdn.builder.io/api/v1/image/assets/c919bc09f5d1432e8f0080d960fc42af/912e4ec4ee411fd814eaea745afbc3fa544642a8f6c8b18d88f801cd5203eea0?apiKey=c919bc09f5d1432e8f0080d960fc42af&',
      tags: ['주차장', '전문의', '키워드'],
      address: '서울특별시 성동구 하왕십리동 동무빌딩 11층',
      distance: '351m',
      phoneNumber: '02-1111-7777',
      website: 'https://hanheart.co.kr',
      openingHours: {
        '월요일': '09:00 - 18:00',
        '화요일': '09:00 - 18:00',
        '수요일': '09:00 - 18:00',
        '목요일': '09:00 - 18:00',
        '금요일': '09:00 - 18:00',
        '토요일': '09:00 - 18:00',
        '일요일': '휴진',
        '공휴일': '휴진',
      },
      lunchTime: '13:00 - 14:00',
    );
  }
}