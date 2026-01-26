import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/bottom_navbar_widget_56.dart';
import 'package:flutter_widgets/widgets/drag_dropList_widget_61.dart';
import 'package:flutter_widgets/widgets/grid_paper_widget_63.dart';
import 'package:flutter_widgets/widgets/layout_builder_widget_64.dart';
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
          scaffoldBackgroundColor: Colors.grey.shade100,
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
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.copyWith(
                  bodyMedium: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[900]),
                  bodySmall: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[900]),
                  bodyLarge: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
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
        home: const LayoutBuilderWidget(),
      ),
    );
  }
}
