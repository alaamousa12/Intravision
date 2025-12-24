import 'package:flutter/material.dart';

class UploadLoader extends StatelessWidget {
  final double progress; 
  final String? label;

  const UploadLoader({
    super.key,
    required this.progress,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: textTheme.bodyMedium,
          ),
          const SizedBox(height: 6),
        ],
        LinearProgressIndicator(
          value: progress,
          minHeight: 6,
          borderRadius: BorderRadius.circular(4),
          backgroundColor: theme.colorScheme.surface,
          valueColor: AlwaysStoppedAnimation<Color>(
            theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
