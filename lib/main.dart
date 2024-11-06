import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/presentation/views/resposive_dashboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors. bgColor,
            fontFamily: GoogleFonts.montserrat().fontFamily),
        debugShowCheckedModeBanner: false,
        home: const ResposiveDashboardView());
  }
}
