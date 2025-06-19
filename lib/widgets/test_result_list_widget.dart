import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class TestResultListWidget extends StatelessWidget {
  final List<TestResult>? tests;

  const TestResultListWidget({super.key, required this.tests});

  @override
  Widget build(BuildContext context) {
    if (tests == null || tests!.isEmpty) {
      return const Text('어학/시험 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tests!
          .map(
            (test) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(test.testName ?? '시험명'),
              Text(
                '${test.scoreOrGrade ?? ''} (${test.issueDate ?? ''})',
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}