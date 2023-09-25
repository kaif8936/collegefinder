import 'package:collegefinder/providers/college_provider.dart';
import 'package:collegefinder/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CollegeProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return SafeArea(
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Easy Wash Partner',
              theme: ThemeData(
                textTheme: GoogleFonts.interTextTheme(),
                useMaterial3: true,
              ),
              routerConfig: router,
            ),
          );
        },
      ),
    );
  }
}
