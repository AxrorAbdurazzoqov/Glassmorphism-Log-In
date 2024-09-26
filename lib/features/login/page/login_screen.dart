import 'package:flutter/material.dart';
import 'package:glassmorphism_login_screen/core/constants/colors/app_colors.dart';
import 'package:glassmorphism_login_screen/core/extensions/get_mediaquery_size.dart';
import 'package:glassmorphism_login_screen/features/login/widget/glassmorphism_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    color: AppColors.instance.backgroundColor,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: context.getHeight * 0.7,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.instance.gradien1,
                            AppColors.instance.gradient2,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -context.getHeight * 0.2,
                    left: -context.getWidth * 0.2,
                    child: Container(
                      height: context.getHeight * 0.7,
                      width: context.getWidth,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColors.instance.gradient3,
                            AppColors.instance.gradient4,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: context.getHeight * 0.25,
                    right: -context.getWidth * 0.2,
                    child: Container(
                      height: context.getHeight * 0.7,
                      width: context.getWidth,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            AppColors.instance.gradient3,
                            AppColors.instance.gradient4,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: context.getHeight * 0.2,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Text('Hi Username!', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: AppColors.instance.white)),
                        const SizedBox(height: 10),
                        Text('Welcome Back', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.instance.white)),
                        const SizedBox(height: 10),
                        const GlassmorphismWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


