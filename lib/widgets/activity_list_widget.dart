import 'package:flutter/material.dart';
import 'package:resume/models/models.dart';

class ActivityListWidget extends StatelessWidget {
  final List<Activity>? activities;

  const ActivityListWidget({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    if (activities == null || activities!.isEmpty) {
      return const Text('대외활동 정보 없음');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: activities!
          .map(
            (activity) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                activity.activityName ?? '활동명',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(activity.period ?? '기간'),
              if (activity.description != null)
                Text(activity.description!),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}
