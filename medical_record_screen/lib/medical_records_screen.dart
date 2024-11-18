import 'package:flutter/material.dart';
import 'package:medical_record_screen/medical_records/components/date_time_display.dart';
import 'package:medical_record_screen/medical_records/components/diagnosis_section.dart';
import 'package:medical_record_screen/medical_records/components/medical_servies.dart';
import 'package:medical_record_screen/medical_records/components/view_records_button.dart';

class MedicalRecordsScreen extends StatelessWidget {
  const MedicalRecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 103),
          child: Column(
            children: [
              const MedicalServices(
                  title: '의료 기록', subtitle: 'by time of the day'),
              const SizedBox(height: 26),
              const DateTimeDisplay(),
              const SizedBox(height: 32),
              const DiagnosisSection(),
              const SizedBox(height: 26),
              const ViewRecordsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
