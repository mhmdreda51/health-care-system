class NotificationModel {
  final String title;
  final String disc;

  NotificationModel({
    required this.title,
    required this.disc,
  });
}

List<NotificationModel> notificationList = [
  NotificationModel(
    title: "Covid 19",
    disc:
        "Clean your hands before putting on the mask, and before and after taking it off",
  ),
  NotificationModel(
    title: "Covid 19",
    disc: "Make sure it covers your nose, mouth and chin.",
  ),
  NotificationModel(
    title: "Covid 19",
    disc: "Do not use masks with valves.",
  ),
];
