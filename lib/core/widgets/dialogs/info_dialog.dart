import 'package:flutter/material.dart';
import 'app_dialog.dart';

class InfoDialog extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;

  const InfoDialog({
    super.key,
    required this.title,
    required this.message,
    this.buttonText = 'OK',
  });

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(buttonText),
        ),
      ],
    );
  }
}
