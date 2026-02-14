import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/qr_code_package_82.dart';
import 'package:flutter_widgets/widgets/snackbar_widget_83.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SnackbarWidget(),
          ],
        ),
      ),
    );
  }
}

class SnackbarWidge extends StatelessWidget {
  const SnackbarWidge({super.key});

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          Icon(Icons.check, color: Colors.green, size: 25),
          SizedBox(width: 20),
          Text('This is a minimal snackbar!'),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showSnackbar(context),
      child: Text('Show Snackbar'),
    );
  }
}
