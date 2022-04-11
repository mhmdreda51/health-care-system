import 'package:flutter/material.dart';

typedef CloseDialog = void Function();

CloseDialog showLoadingScreen({
  required BuildContext context,
}) {
  final dialog = AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        CircularProgressIndicator(),
      ],
    ),
  );
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => dialog,
  );

  return () => Navigator.of(context).pop();
}

void loadingDialog(BuildContext context) async {
  final closeDialog = showLoadingScreen(
    context: context,
  );
  await Future.delayed(const Duration(seconds: 2));
  closeDialog();
}
