import 'package:demoapp/colors.dart';
import 'package:demoapp/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(themeMode: ThemeMode.system,

        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.green,

          )
        ),
        home: HomePage());
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  CustomButton({required this.title});

  Color _getColorByTitle(String title) {
    switch (title.toLowerCase()) {
      case 'login':
        return AppColors.primaryColor;
      case 'sign up':
        return AppColors.signUpColor;
      case 'refreshing':
        return AppColors.refreshingColor;
      case 'logout':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Optional: Show snackbar or print message
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$title button pressed')));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _getColorByTitle(title),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(title.toUpperCase(), style: TextStyle(fontSize: 16)),
    );
  }
}
