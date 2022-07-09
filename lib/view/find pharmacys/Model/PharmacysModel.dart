class PharmacysModel {
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

  PharmacysModel({
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

List<PharmacysModel> pharmacysList = [
  PharmacysModel(
    location: 'Mansoura',
    name: "El Ezaby Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address: "Meat El Moatah St Off 23rd of July Street",
    gmail: "contactus@elezabypharmacy.com",
    numberPhone: 19600,
    socialName: "El Ezaby Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 12:30 AM )",
    description: [
      ""
          "El Ezaby Pharmacies is recognized as Egypt’s uncontested leading provider of health and personal care products. A success story that began with one pharmacy established in 1975, the group is now a major corporation driving the country’s healthcare sector. With nearly 40 years of experience serving the Egyptian community, El Ezaby Pharmacies has an ambitious plan to cement its leadership across the region."
    ],
  ),
  PharmacysModel(
    location: 'Met Ghamr',
    name: "almaghribii Pharmacy ",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 3.5,
    recommendation: "Top Rated",
    address:
        "It is located between Fatima Al-Zahraa Mosque and Ghazal Factory, Mit Ghamr, Mit Ghamr City (equivalent to Daqados), Mit Ghamr, Dakahlia.",
    gmail: "contactus@almaghribii Pharmacy.com",
    numberPhone: 178887,
    socialName: "almaghribii Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 09:30 PM )",
    description: [
      ""
          "almaghribii Pharmacy  of health and personal care products"
    ],
  ),
  PharmacysModel(
    location: 'Cairo',
    name: "El Laithy Pharmacies",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address: "28 Mohamed Mazhar, St, Zamalek, Cairo Governorate",
    gmail: "contactus@El Laithy Pharmacies.com",
    numberPhone: 01014000931,
    socialName: "El Laithy Pharmacies",
    workingTime: "mon - sat ( 08:30 AM - 2:00 AM )",
    description: [
      ""
          "El Laithy group of pharmacies was established in 2000 and is considered one of the oldest groups that aims to satisfy the customer and achieve his requirements. We are honored to provide service to more than 20000 customers around the clock",
    ],
  ),
  PharmacysModel(
    location: 'Cairo',
    name: "dawaee pharmacy",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 3.0,
    recommendation: "Top Rated",
    address: "Nasser City, Cairo Governorate",
    gmail: "contactus@dawaee pharmacy.co",
    numberPhone: 0224114087,
    socialName: "dawaee pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 10:00 PM )",
    description: [
      "dawaee pharmacy of health and personal care products and was established in 2005"
          "",
    ],
  ),
  PharmacysModel(
    location: 'Cairo',
    name: "19011 pharmacies",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 4.50,
    recommendation: "Top Rated",
    address: "El Tahrir Street Intersection of Mohamed Farid Street",
    gmail: "contactus@19011 pharmacies.com",
    numberPhone: 0226737212,
    socialName: "19011 pharmacies",
    workingTime: "mon - sat ( 08:30 AM - 12:00 PM )",
    description: [
      ""
          "We seek to provide health care, medicine, personal care and beauty services for individuals, insurance companies and hospitals in all our branches",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Bastawisi Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 4.0,
    recommendation: "Top Rated",
    address: "Al-Gomhoria Street, Mansoura (section 2)",
    gmail: "contactus@Bastawisi Pharmacy.com",
    numberPhone: 0502333333,
    socialName: "Bastawisi Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 2:00 AM )",
    description: [
      ""
          "We seek to provide health care, medicine, personal care and beauty services for individuals, insurance companies and hospitals in all our branches",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Al Manawy Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "Pharmacies, doctors and hospitals",
    rateStars: 3.50,
    recommendation: "Top Rated",
    address: "Ahmed Maher, Mansoura (section 2), Mansoura",
    gmail: "contactus@Bastawisi Pharmacy.com",
    numberPhone: 01115159111,
    socialName: "Al Manawy Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 05:00 AM )",
    description: [
      ""
          "We seek to provide health care, medicine, personal care and beauty services for individuals, insurance companies and hospitals in all our branches",
    ],
  ),
  PharmacysModel(
    location: 'cairo',
    name: "Elezaby Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "pharmacies, doctors and hospitals",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address: "1 Ahmed Tayseer, Golf, Nasr City, Cairo Governorate",
    gmail: "Elezaby Pharmacy@gmail.com",
    numberPhone: 19600,
    socialName: "Elezaby Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 02:00 AM )",
    description: [
      ""
          "El Ezaby Pharmacies is recognized as Egypts uncontested leading provider of health and personal care products. A success story that began with one pharmacy established in 1975"
    ],
  ),
  PharmacysModel(
    location: 'Giza',
    name: "Elezaby Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "pharmacies, doctors and hospitals",
    rateStars: 4.5,
    recommendation: "Top Rated",
    address:
        "509 Al-Ahram Street - next to Banque Misr - Giza Square, Giza Square",
    gmail: "Elezaby Pharmacy@gmail.com",
    numberPhone: 19600,
    socialName: "Elezaby Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 02:00 AM )",
    description: [
      ""
          "El Ezaby Pharmacies is recognized as Egypts uncontested leading provider of health and personal care products. A success story that began with one pharmacy established in 1975"
    ],
  ),
  PharmacysModel(
    location: 'Alexandria',
    name: "Elezaby Pharmacy",
    image: "assets/images/pharmacy.png",
    category: "pharmacies, doctors and hospitals",
    rateStars: 4.5,
    recommendation: "Recommended",
    address: "Egypt-Alexandria railway station, Alexandria station",
    gmail: "Elezaby Pharmacy@gmail.com",
    numberPhone: 19600,
    socialName: "Elezaby Pharmacy",
    workingTime: "mon - sat ( 08:30 AM - 02:00 PM )",
    description: [
      ""
          "El Ezaby Pharmacies is recognized as Egypts uncontested leading provider of health and personal care products. A success story that began with one pharmacy established in 1975"
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Most Viewed",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
  PharmacysModel(
    location: 'Mansoura',
    name: "Dr. Mohamed Ali",
    image: "assets/images/pharmacy.png",
    category: "Neurologists",
    rateStars: 3.0,
    recommendation: "Recommended",
    address: "Al Sofleya St, El Mansoura 1, Dakahlia Governorate",
    gmail: "Mohamed Ali@gmail.com",
    numberPhone: 201225548380,
    socialName: "Mohamed Ali",
    workingTime: "mon - sat ( 08:30 AM - 09:00 PM )",
    description: [
      ""
          "Electrocardiograms Findings - Lebrun F, Blouard Ph, Ch Brohe Quotation of functional mitral regurgitation during bicycle exercise in patients with heart failure. 1998",
    ],
  ),
];
