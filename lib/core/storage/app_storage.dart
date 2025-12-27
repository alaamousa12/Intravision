import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static const _onboardingKey = 'onboarding_completed';

  /// هل المستخدم أنهى الـ Onboarding؟
  static Future<bool> isOnboardingCompleted() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingKey) ?? false;
  }

  /// تسجيل أن الـ Onboarding انتهى
  static Future<void> setOnboardingCompleted() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingKey, true);
  }
}
