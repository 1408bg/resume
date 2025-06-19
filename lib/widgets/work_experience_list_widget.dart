import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class WorkExperienceListWidget extends StatelessWidget {
  final List<WorkExperience>? workExperience;

  const WorkExperienceListWidget({super.key, required this.workExperience});

  @override
  Widget build(BuildContext context) {
    if (workExperience == null || workExperience!.isEmpty) {
      return const Text('경력 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: workExperience!
          .map(
            (work) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    work.companyName ?? '회사명',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    work.period ?? '기간',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              Text(work.position ?? '직책'),
              const SizedBox(height: 8),
              if (work.responsibilities != null)
                ...work.responsibilities!.map(
                      (resp) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text('• $resp'),
                  ),
                ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}