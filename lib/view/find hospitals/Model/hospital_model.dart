class HospitalModel {
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;
  final List description;
  final String address;
  final String workingTime;
  final int numberPhone;
  final String socialName;
  final String gmail;
  final String recommendation;

  HospitalModel({
    required this.recommendation,
    required this.category,
    required this.rateStars,
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.address,
    required this.workingTime,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
  });
}

List<HospitalModel> hospitals = [
  HospitalModel(
    recommendation: "Near by",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    socialName: "Tabarak Children's Hospital",
    gmail: "TabarakHospital@gmail.com",
    rateStars: 4,
    category: "Medical Center | Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Tabarak Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 6 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Near by",
    address: "9, Anwar El Mofty St., Nasr City - Cairo - Egypt",
    socialName: "Mansoura Fever",
    gmail: "MansouraFeverHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Mansoura Fever Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 5 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Near by",
    address: "El Gomhorya St., El Mansoura - Dakahlia - Egypt",
    socialName: "Mansoura Hospital",
    gmail: "Mansoura Hospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Urology & Naphrology Center - Dr",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 7 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "Dr. Atef El Mongy St., El Mansoura - Dakahlia - Egypt",
    socialName: "Gezira International Hospital ",
    gmail: "GeziraHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Gezira International Hospital ",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 15 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "	El Gomhorya St., El Mansoura - Dakahlia - Egypt",
    socialName: "El Mansoura Old General Hospital",
    gmail: "ElMansouraOldGeneralHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Mansoura Old General Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 2 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "153, Canat El Suez St., El Mansoura - Dakahlia - Egypt",
    socialName: "El Khair Hospital",
    gmail: "El KhairHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Khair Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 7 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    socialName: "El Mansoura International Specialized Hospital",
    gmail: "MansouraHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Mansoura International",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 8 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "Gihan El Sadat St., El Mansoura - Dakahlia - Egypt",
    socialName: "Emergency Hospital - El Mansoura University",
    gmail: "Mansoura Hospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Emergency Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 14 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "	Gihan St., El Mansoura - Dakahlia - Egypt",
    socialName: "Gastroenterology Surgical Center",
    gmail: "SurgicalHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Gastroenterology Surgical Center",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 10 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Near by",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    socialName: "Tabarak Children's Hospital",
    gmail: "TabarakHospital@gmail.com",
    rateStars: 4,
    category: "Medical Center | Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Tabarak Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 6 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Near by",
    address: "9, Anwar El Mofty St., Nasr City - Cairo - Egypt",
    socialName: "Mansoura Fever",
    gmail: "MansouraFeverHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Mansoura Fever Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 5 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Near by",
    address: "El Gomhorya St., El Mansoura - Dakahlia - Egypt",
    socialName: "Mansoura Hospital",
    gmail: "Mansoura Hospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Urology & Naphrology Center - Dr",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 7 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "Dr. Atef El Mongy St., El Mansoura - Dakahlia - Egypt",
    socialName: "Gezira International Hospital ",
    gmail: "GeziraHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Gezira International Hospital ",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 15 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "	El Gomhorya St., El Mansoura - Dakahlia - Egypt",
    socialName: "El Mansoura Old General Hospital",
    gmail: "ElMansouraOldGeneralHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Mansoura Old General Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 2 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Top Rated",
    address: "153, Canat El Suez St., El Mansoura - Dakahlia - Egypt",
    socialName: "El Khair Hospital",
    gmail: "El KhairHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Khair Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 7 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    socialName: "El Mansoura International Specialized Hospital",
    gmail: "MansouraHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "El Mansoura International",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 8 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "Gihan El Sadat St., El Mansoura - Dakahlia - Egypt",
    socialName: "Emergency Hospital - El Mansoura University",
    gmail: "Mansoura Hospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Emergency Hospital",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 14 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
  HospitalModel(
    recommendation: "Recommended",
    address: "	Gihan St., El Mansoura - Dakahlia - Egypt",
    socialName: "Gastroenterology Surgical Center",
    gmail: "SurgicalHospital@gmail.com",
    rateStars: 4,
    category: "Hospitals",
    image: "assets/images/hospital.jpg",
    name: "Gastroenterology Surgical Center",
    description: [
      "St. John’s is an acute General Public Voluntary Hospital, 20000394) and is administered and managed in accordance with a Hospital Constitution approved by the Charities Regulatory Authority.",
      " and is a Registered Charity under the Charities Acts (Registered Charity No.",
      "The Hospital has a total of 99 beds – 89 In-Patient beds and 10 Day Care beds. The In-Patient specialties are General Medicine, General Surgery and Gynaecology.",
      " We also have an Urgent Care Centre incorporating a Local Injuries Unit and Medical Assessment Unit."
    ],
    location: "Mansoura- 10 km",
    numberPhone: 201225548380,
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
  ),
];
