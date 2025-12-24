import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';

class AppDialog extends StatelessWidget {
  final Widget title;
  final Widget content;
  final List<Widget>? actions;

  const AppDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusModal),
      ),
      title: title,
      content: content,
      actions: actions,
    );
  }
}
