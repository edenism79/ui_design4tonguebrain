import 'package:flutter/material.dart';
import 'package:hospital_info/components/header.dart';
import 'package:hospital_info/components/hospital_image.dart';
import 'package:hospital_info/components/hospital_name.dart';
import 'package:hospital_info/components/opening_hours.dart';
import 'package:hospital_info/components/location.dart';
import 'package:hospital_info/components/phone_number.dart';
import 'package:hospital_info/components/website.dart';

class HospitalInfoScreen extends StatelessWidget {
  const HospitalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(),
              HospitalImage(),
              HospitalName(),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFF9B9B9B),
              ),
              OpeningHours(),
              Location(),
              PhoneNumber(),
              Website(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hospital_info/components/header.dart';
import 'package:hospital_info/components/hospital_image.dart';
import 'package:hospital_info/components/hospital_name.dart';
import 'package:hospital_info/components/opening_hours.dart';
import 'package:hospital_info/components/location.dart';
import 'package:hospital_info/components/phone_number.dart';
import 'package:hospital_info/components/website.dart';
import 'package:hospital_info/models/hospital_info.dart';
import 'package:hospital_info/services/hospital_service.dart';

class HospitalInfoScreen extends StatefulWidget {
  const HospitalInfoScreen({Key? key}) : super(key: key);

  @override
  _HospitalInfoScreenState createState() => _HospitalInfoScreenState();
}

class _HospitalInfoScreenState extends State<HospitalInfoScreen> {
  late Future<HospitalInfo> _hospitalInfoFuture;

  @override
  void initState() {
    super.initState();
    _hospitalInfoFuture = HospitalService().getHospitalInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<HospitalInfo>(
        future: _hospitalInfoFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final hospitalInfo = snapshot.data!;
            return SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Header(),
                    HospitalImage(imageUrl: hospitalInfo.image),
                    HospitalName(
                      name: hospitalInfo.name,
                      tags: hospitalInfo.tags,
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFF9B9B9B),
                    ),
                    OpeningHours(
                      openingHours: hospitalInfo.openingHours,
                      lunchTime: hospitalInfo.lunchTime,
                    ),
                    Location(
                      address: hospitalInfo.address,
                      distance: hospitalInfo.distance,
                    ),
                    PhoneNumber(phoneNumber: hospitalInfo.phoneNumber),
                    Website(website: hospitalInfo.website),
                  ],
                ),
              ),
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}