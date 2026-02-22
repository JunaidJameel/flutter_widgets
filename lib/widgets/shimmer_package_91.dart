import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class AwesomeSnackbar extends StatelessWidget {
  const AwesomeSnackbar({super.key});

  void _showSnackbar(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: 'Success!',
            message: 'Your action was completed successfully.',
            contentType: ContentType.failure,
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showSnackbar(context),
      child: const Text('Show Snackbar'),
    );
  }
}
