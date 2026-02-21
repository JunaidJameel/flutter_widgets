import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UuidPackage extends StatefulWidget {
  const UuidPackage({super.key});

  @override
  State<UuidPackage> createState() => _UuidPackageState();
}

class _UuidPackageState extends State<UuidPackage> {
  final Uuid _uuid = const Uuid();
  late String _id = _uuid.v4();

  void _generateNewId() {
    setState(() {
      _id = _uuid.v4();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Text(
            _id,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: _generateNewId,
          child: const Text("Regenerate ID"),
        ),
      ],
    );
  }
}
