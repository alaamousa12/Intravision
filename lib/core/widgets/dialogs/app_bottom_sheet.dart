import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';

class AppBottomSheet extends StatelessWidget {
  final Widget child;

  const AppBottomSheet({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.m),
        child: child,
      ),
    );
  }
}
