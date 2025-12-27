import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_colors.dart';
import 'package:intravision/core/localization/app_localizations.dart';
import 'package:intravision/core/widgets/buttons/primary_button.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_indicator.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_page.screen.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_skip.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.controller,
    required this.currentIndex,
    required this.onPageChanged,
    required this.onNext,
    required this.onSkip,
  });

  final PageController controller;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    // تعريف الدالة t لاستخدامها في النصوص
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.pageBackgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: OnboardingSkipButton(onPressed: onSkip),
            ),

            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: onPageChanged,
                // تم حذف const من هنا تماماً لتعمل الترجمة
                children: [
                  OnboardingPage(
                    title: l10n.t('onboarding.page1_title'),
                    subtitle: l10n.t('onboarding.page1_subtitle'),
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                  OnboardingPage(
                    title: l10n.t('onboarding.page2_title'),
                    subtitle: l10n.t('onboarding.page2_subtitle'),
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                  OnboardingPage(
                    title: l10n.t('onboarding.page3_title'),
                    subtitle: l10n.t('onboarding.page3_subtitle'),
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                ],
              ),
            ),

            OnboardingIndicator(currentIndex: currentIndex),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 30),
              child: PrimaryButton(
                // ترجمة نصوص الأزرار أيضاً
                title: currentIndex == 2
                    ? l10n.t('onboarding.get_started')
                    : l10n.t('onboarding.next'),
                onPressed: onNext,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
