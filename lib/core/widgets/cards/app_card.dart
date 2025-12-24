import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final card = Card(
      child: Padding(
        padding: padding ??
            const EdgeInsets.all(
              AppSizes.m,
            ),
        child: child,
      ),
    );

    if (onTap == null) return card;

    return InkWell(
      borderRadius: BorderRadius.circular(AppSizes.radiusCard),
      onTap: onTap,
      child: card,
    );
  }
}
