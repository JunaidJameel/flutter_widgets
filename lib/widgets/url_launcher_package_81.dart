import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPackage extends StatelessWidget {
  const UrlLauncherPackage({super.key});

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://flutter.dev/');

    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchUrl,
      child: const Text('Go To Website'),
    );
  }
}
