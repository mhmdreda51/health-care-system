class LapsModel {
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;
  final String recommendation;
  final List description;
  final String address;
  final String workingTime;
  final int numberPhone;
  final String socialName;
  final String gmail;

  LapsModel({
    required this.category,
    required this.image,
    required this.rateStars,
    required this.name,
    required this.location,
    required this.recommendation,
    required this.description,
    required this.address,
    required this.workingTime,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
  });
}

List<LapsModel> lapsList = [
  LapsModel(
    location: 'mansoura',
    name: "Labmed Egypt",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 3.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Labmed Egypt@gmail.com",
    numberPhone: 201225548380,
    socialName: "Labmed Egypt",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Provides diagnostic laboratory services and pathological tests to the medical community in Egypt"
    ],
  ),
  LapsModel(
    location: 'Cairo',
    name: "Speed ​​Lab",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address:
        "25 Othman Ibn Affan Street, Salah El Din Square, Heliopolis, Cairo",
    gmail: "Speed ​​Lab @gmail.com",
    numberPhone: 19358,
    socialName: "Speed ​​Lab",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "When you see a doctor about any medical issue, you are often concerned and want to know the actual diagnosis of your condition as accurately and quickly as possible. When the doctor asks you to perform specific medical tests, this may take between 24-72 hours or more,"
    ],
  ),
  LapsModel(
    location: 'cairo',
    name: "Nile Radiology & Lab",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Mosaddeq Street in the vicinity of Dokki - near Fathallah Market",
    gmail: "Nile @gmail.com",
    numberPhone: 01284447777,
    socialName: "Nile ",
    workingTime: "mon - sat ( 08:30 AM - 11:00 PM )",
    description: [
      ""
          "Provides diagnostic laboratory services and pathological tests to the medical community in Egypt"
    ],
  ),
  LapsModel(
    location: 'Mansoura',
    name: "almukhtabari (Mansoura 1)",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address:
        "El Gomhouria St, Mansoura Qism 2, El Mansoura, Dakahlia Governorate ",
    gmail: "almukhtabari@gmail.com",
    numberPhone: 19014,
    socialName: "almukhtabari ",
    workingTime: "mon - sat ( 08:30 AM - 12:00 PM )",
    description: [
      ""
          "Patient-centered care Laboratory labs are guided by patient needs to achieve laboratory service goals"
    ],
  ),
  LapsModel(
    location: 'Banha',
    name: "El Shams Laboratories",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address:
        "In front of the stadium, next to the Faculty of Arts, Al-Tabtaqiyin Building, first floor",
    gmail: "El Shams Laboratories@gmail.com",
    numberPhone: 19445,
    socialName: "El Shams Laboratories",
    workingTime: "mon - sat ( 08:30 AM - 11:00 PM )",
    description: [
      ""
          "El Shams Laboratories is the first to introduce in Egypt the international computer program (OMNI) to ensure the accuracy, validity and credibility of the results of the study."
    ],
  ),
  LapsModel(
    location: 'Tanta',
    name: "El Shams Laboratories",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address:
        "3 Mahatta Square), in front of the train station, first floor, next to Mobil Gas Station",
    gmail: "El Shams Laboratories@gmail.com",
    numberPhone: 19445,
    socialName: "El Shams Laboratories",
    workingTime: "mon - sat ( 08:30 AM - 11:00 PM )",
    description: [
      ""
          "El Shams Laboratories is the first to introduce in Egypt the international computer program (OMNI) to ensure the accuracy, validity and credibility of the results of the study."
    ],
  ),
  LapsModel(
    location: 'Mansoura',
    name: "Alfa laboratories",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address:
        "The intersection of Jihan Street with Al-Gomhouria Street, next to El Sallab Hospital",
    gmail: "Alfa laboratories@gmail.com",
    numberPhone: 16191,
    socialName: "Alfa laboratories",
    workingTime: "mon - sat ( 08:30 AM - 11:00 PM )",
    description: [
      ""
          "The objectives of Alfa laboratories are to provide a high-quality medical service to participate in improving the general health of the community by providing advanced medical laboratory services using modern technologies to help in early detection of diseases to prevent their occurrence and to deal with chronic diseases, taking into account the speed of providing these services in a timely manner. Required"
    ],
  ),
  LapsModel(
    location: 'Mahalla',
    name: "Alfa laboratories",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address: "Hammam Plaza Tower - 23 July Street - Al-Shoun Square",
    gmail: "Alfa laboratories@gmail.com",
    numberPhone: 16191,
    socialName: "Alfa laboratories",
    workingTime: "mon - sat ( 08:30 AM - 11:00 PM )",
    description: [
      ""
          "The objectives of Alfa laboratories are to provide a high-quality medical service to participate in improving the general health of the community by providing advanced medical laboratory services using modern technologies to help in early detection of diseases to prevent their occurrence and to deal with chronic diseases, taking into account the speed of providing these services in a timely manner. Required"
    ],
  ),
  LapsModel(
    location: 'Zefta',
    name: "Al Borg Lab",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Army Street in front of the City Council",
    gmail: "Al Borg Labi@gmail.com",
    numberPhone: 19911,
    socialName: "Al Borg Lab",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "We are staffed with over 1400 employees, including 140 doctors utilizing state-of-the-art FDA certified automated equipment and reagents."
    ],
  ),
  LapsModel(
    location: 'Mansoura',
    name: "Al Borg Lab",
    image: "assets/images/laps.png",
    category: "Medical analysis and radiology",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "1 Al-Galaa Street - in front of the university gate",
    gmail: "Al Borg Lab@gmail.com",
    numberPhone: 19911,
    socialName: "Al Borg Lab",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "We are staffed with over 1400 employees, including 140 doctors utilizing state-of-the-art FDA certified automated equipment and reagents."
    ],
  ),
];
