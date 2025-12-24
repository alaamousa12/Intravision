import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';
import 'app_card.dart';

class EmptyStateCard extends StatelessWidget {
  final String title;
  final String message;
  final Widget? icon;
  final Widget? action;

  const EmptyStateCard({
    super.key,
    required this.title,
    required this.message,
    this.icon,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(height: AppSizes.s),
          ],
          Text(
            title,
            style: textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.xs),
          Text(
            message,
            style: textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          if (action != null) ...[
            const SizedBox(height: AppSizes.m),
            action!,
          ],
        ],
      ),
    );
  }
}
