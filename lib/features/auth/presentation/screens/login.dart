import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/widgets/buttons/primary_button.dart';
import '../../../../core/widgets/buttons/social_auth_button.dart';
import '../../../../core/widgets/dividers/auth_divider.dart';
import '../../../../core/widgets/inputs/app_text_field.dart';
import '../../../../core/widgets/inputs/password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cardLight,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 28),

                        // Logo
                        Image.asset(AppAssets.logoMain, width: 72, height: 72),

                        const SizedBox(height: 20),

                        // Title
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Welcome IV',
                            style: AppFonts.h2.copyWith(
                              color: AppColors.overlayDark,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Log in to continue',
                            style: AppFonts.bodyRegular.copyWith(
                              color: AppColors.textTertiary,
                            ),
                          ),
                        ),

                        const SizedBox(height: 28),

                        // Email
                        const AppTextField(
                          label: 'Email',
                          hint: 'Enter your email',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: AppColors.primaryRed,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Password
                        const AppPasswordField(
                          label: 'Password',
                          hint: 'Enter your password',
                        ),

                        const SizedBox(height: 4),

                        // Forgot password
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: AppFonts.bodySmall.copyWith(
                                color: AppColors.primaryRed,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Login button
                        PrimaryButton(title: 'Login', onPressed: () {}),

                        const SizedBox(height: 18),

                        // Divider
                        const AuthDivider(),

                        const SizedBox(height: 18),

                        // Google
                        SocialAuthButton(
                          icon: FontAwesomeIcons.google,
                          label: 'Continue with Google',
                          onPressed: () {},
                        ),

                        const SizedBox(height: 12),

                        // Facebook
                        SocialAuthButton(
                          icon: FontAwesomeIcons.facebookF,
                          label: 'Continue with Facebook',
                          onPressed: () {},
                        ),

                        const Spacer(),

                        // Bottom register
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16, top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: AppFonts.bodySmall.copyWith(
                                  color: AppColors.textTertiary,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Register',
                                  style: AppFonts.bodySmall.copyWith(
                                    color: AppColors.primaryRed,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
