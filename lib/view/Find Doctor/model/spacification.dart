class SpecificationModel {
  final String name;
  final int id;

  SpecificationModel({required this.id, required this.name});
}

List<SpecificationModel> specificationList = [
  SpecificationModel(
    name: "All",
    id: 1,
  ),
  SpecificationModel(
    name: "Top Rated",
    id: 2,
  ),
  SpecificationModel(
    name: "Most Viewed",
    id: 3,
  ),
  SpecificationModel(
    name: "Recommended",
    id: 4,
  ),
];
