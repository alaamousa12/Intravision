import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/storage/app_storage.dart';
import '../../../../core/routes/route_guards.dart';

class OnboardingCubit extends Cubit<bool> {
  OnboardingCubit() : super(false);

  /// تحميل حالة الـ onboarding من التخزين
  Future<void> load() async {
    final completed = await AppStorage.isOnboardingCompleted();

    if (state == completed) return;

    emit(completed);
    RouteGuards.hasCompletedOnboarding = completed;
  }

  /// إنهاء الـ onboarding نهائيًا
  Future<void> complete() async {
    if (state) return;

    await AppStorage.setOnboardingCompleted();

    emit(true);
    RouteGuards.hasCompletedOnboarding = true;
  }
}
