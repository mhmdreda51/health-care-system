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
    location: 'Mit Ghamer',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Reda",
    image: "assets/images/doctor.png",
    category: "Orthopedist",
    rateStars: 3.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedReda@gmail.com",
    numberPhone: 201225666380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Reda",
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
    location: 'Mit Ghamer',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Ali",
    image: "assets/images/doctor.png",
    category: "Orthopedist",
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
    location: 'Mit Ghamer',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Mahmoud",
    image: "assets/images/doctor.png",
    category: "Surgeon",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedMahmoud@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Mahmoud",
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
    location: 'Mit Ghamer',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Attia",
    image: "assets/images/doctor.png",
    category: "Dentist",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedAttia@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Attia",
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
    location: 'Mit Ghamer',
    flags: ["eg", "fr", "us"],
    name: "Dr. Mohamed Mostafa",
    image: "assets/images/doctor.png",
    category: "Orthopedist",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedMostafa@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Mostafa",
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
    name: "Dr. Kareem Ali",
    flags: ["eg", "fr", "us"],
    image: "assets/images/doctor.png",
    category: "Surgeon",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "KareemAli@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Kareem Ali",
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
    name: "Dr. Mohamed Ismail",
    flags: ["eg", "fr", "us"],
    image: "assets/images/doctor.png",
    category: "Dentist",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedIsmail@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ismail",
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
    name: "Dr. Magdy Ahmed",
    image: "assets/images/doctor.png",
    category: "Gastrologist",
    rateStars: 3.0,
    recommendation: "Top Rated",
    flags: ["eg", "fr", "us"],
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MagdyAhmed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Magdy Ahmed",
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
    name: "Dr. Mohamed Magdy",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    flags: ["eg", "fr", "us"],
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedMagdy@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Magdy",
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
    name: "Dr. Mohamed Ashry",
    image: "assets/images/doctor.png",
    category: "Cardiologists",
    flags: ["eg", "fr", "us"],
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedAshry@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ashry",
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
    name: "Doctor Sherif zayed",
    image: "assets/images/doctor.png",
    category: "ENT specialist ENtEndoscopic unit",
    flags: ["eg", "fr", "us"],
    rateStars: 5.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Sherifzayed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Sherif zayed",
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
    name: "Doctor shady elsayed",
    image: "assets/images/doctor.png",
    category: "ENT specialist ENtEndoscopic unit",
    flags: ["eg", "fr", "us"],
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Sherifzayed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Sherif zayed",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      "Consultant ear, nose and throat surgery, head and neck surgery."
          "ENT Doctor Specialized in Pediatric Ear, Nose and Throat, Hearing and Balance Disorder, Adult Ear, Nose and throat Surgery, Adult Ear, Nose and Throat and Pediatric Ear, Nose and throat Surgery",
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
    name: "Doctor Ahmed El Shaer",
    image: "assets/images/doctor.png",
    category: "pecialist Of Ear,Nose and Throat ",
    flags: ["eg", "fr", "us"],
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "AhmedElShaer@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Ahmed El Shaer",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      "Consultant ear, nose and throat surgery, head and neck surgery."
          "ENT Doctor Specialized in Pediatric Ear, Nose and throat Surgery, Pediatric Ear, Nose and Throat, Adult Ear, Nose and throat Surgery and Adult Ear, Nose and Throat"
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
    name: "Dr. Mohamed Ismail",
    flags: ["eg", "fr", "us"],
    image: "assets/images/doctor.png",
    category: "Dentist",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedIsmail@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ismail",
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
    name: "Dr. Magdy Ahmed",
    image: "assets/images/doctor.png",
    category: "Gastrologist",
    rateStars: 3.0,
    recommendation: "Top Rated",
    flags: ["eg", "fr", "us"],
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MagdyAhmed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Magdy Ahmed",
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
    name: "Dr. Mohamed Magdy",
    image: "assets/images/doctor.png",
    category: "Neurologists",
    flags: ["eg", "fr", "us"],
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedMagdy@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Magdy",
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
    name: "Dr. Mohamed Ashry",
    image: "assets/images/doctor.png",
    category: "Cardiologists",
    flags: ["eg", "fr", "us"],
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "MohamedAshry@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Mohamed Ashry",
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
    name: "Doctor Sherif zayed",
    image: "assets/images/doctor.png",
    category: "ENT specialist ENtEndoscopic unit",
    flags: ["eg", "fr", "us"],
    rateStars: 5.0,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Sherifzayed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Sherif zayed",
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
    name: "Doctor shady elsayed",
    image: "assets/images/doctor.png",
    category: "ENT specialist ENtEndoscopic unit",
    flags: ["eg", "fr", "us"],
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Sherifzayed@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Sherif zayed",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      "Consultant ear, nose and throat surgery, head and neck surgery."
          "ENT Doctor Specialized in Pediatric Ear, Nose and Throat, Hearing and Balance Disorder, Adult Ear, Nose and throat Surgery, Adult Ear, Nose and Throat and Pediatric Ear, Nose and throat Surgery",
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
    name: "Doctor Ahmed El Shaer",
    image: "assets/images/doctor.png",
    category: "pecialist Of Ear,Nose and Throat ",
    flags: ["eg", "fr", "us"],
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "AhmedElShaer@gmail.com",
    numberPhone: 201225548380,
    priceFirsTime: 250,
    priceReturn: 150,
    socialName: "Ahmed El Shaer",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      "Consultant ear, nose and throat surgery, head and neck surgery."
          "ENT Doctor Specialized in Pediatric Ear, Nose and throat Surgery, Pediatric Ear, Nose and Throat, Adult Ear, Nose and throat Surgery and Adult Ear, Nose and Throat"
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
