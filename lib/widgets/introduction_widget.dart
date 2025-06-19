import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class IntroductionWidget extends StatelessWidget {
  final Introduction? introduction;

  const IntroductionWidget({super.key, required this.introduction});

  @override
  Widget build(BuildContext context) {
    return introduction?.selfIntroductionText == null
    ? const SizedBox()
    : Text(
      introduction!.selfIntroductionText!,
      style: const TextStyle(fontSize: 16, height: 1.6),
    );
  }
}