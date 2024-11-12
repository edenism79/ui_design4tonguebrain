class HospitalInfo {
  final String name;
  final String image;
  final List<String> tags;
  final String address;
  final String distance;
  final String phoneNumber;
  final String website;
  final Map<String, String> openingHours;
  final String lunchTime;

  HospitalInfo({
    required this.name,
    required this.image,
    required this.tags,
    required this.address,
    required this.distance,
    required this.phoneNumber,
    required this.website,
    required this.openingHours,
    required this.lunchTime,
  });
}