import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class EducationListWidget extends StatelessWidget {
  final List<Education>? education;

  const EducationListWidget({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    if (education == null || education!.isEmpty) {
      return const Text('학력 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: education!
          .map(
            (edu) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    edu.institution ?? '기관',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    edu.period ?? '기간',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text('${edu.degree != null ? '${edu.degree!} ' : ''}${edu.major ?? ''}'),
              if (edu.gpa != null) Text('학점: ${edu.gpa!}'),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}