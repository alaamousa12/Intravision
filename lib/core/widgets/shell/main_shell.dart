import 'package:flutter/material.dart';
// import '../../routes/app_routes.dart';
import '../../constants/app_colors.dart';
// import '../../constants/app_sizes.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

// class _MainShellState extends State<MainShell> {
//   int _currentIndex = 0;

//   final List<String> _routes = [
//     AppRoutes.home,
//     AppRoutes.upload,
//     AppRoutes.history,
//     AppRoutes.profile,
//   ];

//   void _onTap(int index) {
//     if (index == _currentIndex) return;

//     setState(() {
//       _currentIndex = index;
//     });

//     Navigator.pushReplacementNamed(
//       context,
//       _routes[index],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: const SizedBox(), // المحتوى الحقيقي من RouteGenerator

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _onTap,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: AppColors.cardLight,
//         selectedItemColor: AppColors.primaryRed,
//         unselectedItemColor: AppColors.textTertiary,
//         selectedFontSize: 12,
//         unselectedFontSize: 12,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, size: AppSizes.iconMedium),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.cloud_upload, size: AppSizes.iconMedium),
//             label: 'Upload',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history, size: AppSizes.iconMedium),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, size: AppSizes.iconMedium),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;

  // قائمة الصفحات الفعلية اللي هتتعرض جوه الـ Body
  final List<Widget> _pages = [
    const Center(
      child: Text('Home Screen'),
    ), // استبدلها بكلاس HomePage() لاحقاً
    const Center(child: Text('Upload Screen')), // استبدلها بكلاس UploadPage()
    const Center(child: Text('History Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // هنا السر: الـ Body بيتغير حسب الـ Index من غير ما الـ Shell تتقفل
      body: IndexedStack(index: _currentIndex, children: _pages),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.cardLight,
        selectedItemColor: AppColors.primaryRed,
        unselectedItemColor: AppColors.textTertiary,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_upload),
            label: 'Upload',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
