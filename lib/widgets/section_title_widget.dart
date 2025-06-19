import 'package:flutter/material.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  final Widget content;

  const SectionTitleWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Divider(thickness: 2, height: 16),
        const SizedBox(height: 12),
        content,
      ],
    );
  }
}