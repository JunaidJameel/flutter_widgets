import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class AwesomeSnackbar extends StatelessWidget {
  const AwesomeSnackbar({super.key});

  void _createSnackBar(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);

    messenger
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Sucess',
          message: 'Your action was completed sucessfully.',
          contentType: ContentType.success,
        ),
      ));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _createSnackBar(context),
      child: const Text('Show Snackbar'),
    );
  }
}
