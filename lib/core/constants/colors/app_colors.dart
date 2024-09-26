import 'package:flutter/material.dart';

class AppColors {
  static final _instance = AppColors.init();
  static AppColors get instance => _instance;
  AppColors.init();

  //! Colors
  final Color backgroundColor = const Color(0xffD3EFFB);
  final Color white = const Color(0xffFFFFFF);
  final Color cyan = const Color(0xff4AC8F4);


  //! Gradients
  final Color gradien1 = const Color(0xff009FFF);
  final Color gradient2 = const Color(0xff58E0AA);
  final Color gradient3 = const Color(0xffC0C0AA);
  final Color gradient4 = const Color(0xff1CEFFF);
}
