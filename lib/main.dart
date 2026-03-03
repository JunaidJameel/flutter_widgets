import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/story_package_96.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_widgets/home.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.asset('assets/error_image.png')),
        SizedBox(height: 30),
        Text(
          details.exception.toString(),
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Widgets',
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.white,
            selectionColor: Colors.white24,
            selectionHandleColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.grey.shade900,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(327, 20),
              backgroundColor: Colors.grey[900],
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade100,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.grey[900]),
            iconTheme: IconThemeData(color: Colors.grey[900], size: 28),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.transparent,
            labelStyle: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            hintStyle: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.copyWith(
                  bodyMedium: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900]),
                  bodySmall: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900]),
                  bodyLarge: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900]),
                ),
          ),
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: HomeView(),
      ),
    );
  }
}
