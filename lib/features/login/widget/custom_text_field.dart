import 'package:flutter/material.dart';
import 'package:glassmorphism_login_screen/core/constants/colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData icon;
  final String labelText;

  const CustomTextFormField({super.key, required this.icon, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      cursorColor: AppColors.instance.white,
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.instance.white),
        suffixIcon: Icon(icon, color: AppColors.instance.white),
        fillColor: AppColors.instance.white.withOpacity(0.5),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.instance.white),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.instance.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
