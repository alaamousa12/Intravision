import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routes/app_routes.dart';
import '../bloc/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthCubit>().login();

            Navigator.pushReplacementNamed(context, AppRoutes.main);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
