class HelpModel {
  final String title;
  final String disc;

  HelpModel({
    required this.disc,
    required this.title,
  });
}

List<HelpModel> helpList = [
  HelpModel(
    disc:
        "If you want to delete that account, new or old, there's no link to make it happen. You'll have to hit the customer service contact form and send a request for.",
    title: "How to delete account?",
  ),
  HelpModel(
    disc:
        "If you want to delete that account, new or old, there's no link to make it happen. You'll have to hit the customer service contact form and send a request for.",
    title: "I don't need notification",
  ),
  HelpModel(
    disc:
        "If you want to delete that account, new or old, there's no link to make it happen. You'll have to hit the customer service contact form and send a request for.",
    title: "How do I find a doctor?",
  ),
];
