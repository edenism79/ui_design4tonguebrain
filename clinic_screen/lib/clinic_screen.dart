import 'package:clinic_screen/widgets/clinic_header.dart';
import 'package:clinic_screen/widgets/consultaion_section.dart';
import 'package:clinic_screen/widgets/hospital_finder.dart';
import 'package:clinic_screen/widgets/telemedicine_section.dart';
import 'package:flutter/material.dart';

class ClinicScreen extends StatelessWidget {
  const ClinicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: auto),
          padding: const EdgeInsets.fromLTRB(7, 89, 7, 156),
          child: const Column(
            children: [
              ClinicHeader(),
              SizedBox(height: 27),
              HospitalFinder(),
              SizedBox(height: 17),
              TelemedicineSection(),
              SizedBox(height: 29),
              ConsultationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
