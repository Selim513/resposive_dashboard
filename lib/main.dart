import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resposive_dashboard/core/utils/colors.dart';
import 'package:resposive_dashboard/presentation/views/resposive_dashboard.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const DashBoardApp(),
  ));
}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.bgColor,
            fontFamily: GoogleFonts.montserrat().fontFamily),
        debugShowCheckedModeBanner: false,
        home: const ResposiveDashboardView());
  }
}
