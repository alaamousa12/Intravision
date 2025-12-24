import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';
import 'app_card.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget? leading;
  final Widget? trailing;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: AppSizes.s),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.titleMedium,
                ),
                const SizedBox(height: AppSizes.xs),
                Text(
                  description,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: AppSizes.s),
            trailing!,
          ],
        ],
      ),
    );
  }
}
