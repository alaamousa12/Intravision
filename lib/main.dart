import 'package:flutter/material.dart';
import 'app.dart'; // استيراد ملف الـ App الرئيسي

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  
  runApp(const App());
}