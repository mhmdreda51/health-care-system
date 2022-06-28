import 'dart:ui';

import 'package:health_care_system/constants/app_colors.dart';

class ServicesModel {
  final int id;
  final String image;
  final String name;
  final Color color;

  ServicesModel({
    required this.image,
    required this.name,
    required this.color,
    required this.id,
  });
}

List<ServicesModel> servicesList = [
  ServicesModel(
    id: 1,
    image: "assets/icons/doctor.png",
    name: "Find doctors",
    color: const Color(0xFF63CEFA),
  ),
  ServicesModel(
    id: 2,
    image: "assets/icons/hospital.png",
    name: "find hospitals",
    color: const Color(0xFF4BC989),
  ),
  ServicesModel(
    id: 3,
    image: "assets/icons/Icons- medicine-25.png",
    name: "find pharmacy's",
    color: const Color(0xFFA28EED),
  ),
  ServicesModel(
    id: 4,
    image: "assets/icons/lab.png",
    name: "find labs",
    color: const Color(0xFFFF7070),
  ),
  ServicesModel(
    id: 5,
    image: "assets/icons/Icons- ambulance.png",
    name: "call ambulance",
    color: const Color(0xFFECAC4A),
  ),
  ServicesModel(
    id: 6,
    image: "assets/icons/card.png",
    name: "Health Card",
    color: AppColors.buttonGradient,
  ),
];
