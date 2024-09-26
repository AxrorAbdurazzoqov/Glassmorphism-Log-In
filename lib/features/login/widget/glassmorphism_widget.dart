import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism_login_screen/core/constants/colors/app_colors.dart';
import 'package:glassmorphism_login_screen/core/extensions/get_mediaquery_size.dart';
import 'package:glassmorphism_login_screen/features/login/widget/custom_text_field.dart';

class GlassmorphismWidget extends StatelessWidget {
  const GlassmorphismWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight * 0.5,
      width: context.getWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.instance.white.withOpacity(0.1),
        border: Border.all(
          width: 1.5,
          color: AppColors.instance.cyan,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.instance.white),
                ),
                const SizedBox(height: 30),
                const CustomTextFormField(
                  icon: Icons.mail_outline_rounded,
                  labelText: 'Email',
                ),
                const SizedBox(height: 15),
                const CustomTextFormField(
                  icon: Icons.lock_outline_rounded,
                  labelText: 'Password',
                ),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(context.getWidth * 0.6, 50)),
                    backgroundColor: WidgetStatePropertyAll(AppColors.instance.cyan.withOpacity(0.5)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: TextStyle(color: AppColors.instance.white, fontSize: 22),
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.instance.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
