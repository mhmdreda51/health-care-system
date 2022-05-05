class SpecificationModel {
  final String name;
  final int id;

  SpecificationModel({required this.id, required this.name});
}

List<SpecificationModel> specificationHospitalList = [
  SpecificationModel(
    name: "All",
    id: 1,
  ),
  SpecificationModel(
    name: "Near by",
    id: 2,
  ),
  SpecificationModel(
    name: "Top Rated",
    id: 3,
  ),
  SpecificationModel(
    name: "Recommended",
    id: 4,
  ),
];
