import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/bottom_navbar_widget_56.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_widgets/home.dart';

void main() {
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
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey[900]),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          textTheme: GoogleFonts.barlowTextTheme(
            Theme.of(context).textTheme.copyWith(
                  bodyMedium: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[900]),
                ),
          ),
          // dataTableTheme: const DataTableThemeData(
          //   // dataTextStyle: TextStyle(fontSize: 17.5, fontWeight: FontWeight.w400),
          //   headingTextStyle:
          //       TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          // ),
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
