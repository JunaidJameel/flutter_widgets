import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';

class AnyLinkPreviewPackage extends StatefulWidget {
  const AnyLinkPreviewPackage({super.key});

  @override
  State<AnyLinkPreviewPackage> createState() => _AnyLinkPreviewPackageState();
}

class _AnyLinkPreviewPackageState extends State<AnyLinkPreviewPackage> {
  final TextEditingController _controller = TextEditingController();

  String? _link;

  void _handleSubmit(String value) {
    if (AnyLinkPreview.isValidLink(value)) {
      setState(() {
        _link = value;
      });
    } else {
      setState(() {
        _link = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
              hintText: "Paste a link here...", border: OutlineInputBorder()),
          onSubmitted: _handleSubmit,
        ),
        const SizedBox(height: 30),
        if (_link != null)
          AnyLinkPreview(
            link: _link!,
            previewHeight: MediaQuery.of(context).size.height * .35,
            onTap: () {},
          ),
      ],
    );
  }
}
