class DoctorModel {
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;
  final String recommendation;
  final List education;
  final List publications;
  final List description;
  final List<String> languages;
  final List<String> flags;

  final String address;
  final String workingTime;
  final int priceFirsTime;
  final int priceReturn;
  final int numberPhone;
  final String socialName;
  final String gmail;

  DoctorModel({
    required this.category,
    required this.flags,
    required this.image,
    required this.rateStars,
    required this.name,
    required this.location,
    required this.recommendation,
    required this.education,
    required this.publications,
    required this.description,
    required this.languages,
    required this.address,
    required this.workingTime,
    required this.priceFirsTime,
    required this.priceReturn,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
  });
}

List<DoctorModel> doctorList = [
  DoctorModel(
    location: 'Mansoura',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire d’échocardiographie.",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    flags: ["eg", "fr", "us"],
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    flags: ["eg", "fr", "us"],
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Top Rated",
    flags: ["eg", "fr", "us"],
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
  DoctorModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    flags: ["eg", "fr", "us"],
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
    education: [
      "UCL - Cliniques Saint - Luc (1987 -1999)- Docteur ",
      "Cardiologue. Recherche au Laboratoire ",
      " ULG-CHU Start-Tilman (1999-2000). Recherche"
    ],
    languages: ["Arabic", "French", "English"],
    publications: [
      "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998"
    ],
  ),
];
