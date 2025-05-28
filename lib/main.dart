import 'package:demoapp/colors.dart';
import 'package:demoapp/image_paths.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> buttonTitles = [
    'login',
    'sign up',
    'refreshing',
    'logout',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          title: Text(''),
          backgroundColor: AppColors.backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      ImagePaths.profileImage,
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "John_Doe",
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8),
                          ProfileButtons(title: "Edit Profile"),
                          SizedBox(width: 8),
                          ProfileButtons(title: "Share"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            "13 posts",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: AppColors.textColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "200 followers",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: AppColors.textColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "13 following",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: AppColors.textColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileButtons extends StatelessWidget {
  final String title;

  const ProfileButtons({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor,
      ),
      child: Text(
        "${title}",
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
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
